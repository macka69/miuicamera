.class public Lcom/android/camera/fragment/FragmentBeauty;
.super Lcom/android/camera/fragment/BasePanelFragment;
.source "FragmentBeauty.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;
.implements Lio/reactivex/functions/Consumer;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/BasePanelFragment;",
        "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
        "Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;",
        "Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xfb

.field private static final LOG_TAG:Ljava/lang/String; = "FragmentBeauty"

.field private static final SEEKBAR_PROGRESS_RATIO:I = 0x1


# instance fields
.field private mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

.field private mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

.field private mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

.field private mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

.field private mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

.field private mCurrentState:I

.field private mFlowableEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSkinColorShow:Z

.field private mRootView:Landroid/view/View;

.field private mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

.field private mSeekBarMaxProgress:I

.field private mViewPager:Lcom/android/camera/ui/NoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BasePanelFragment;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarMaxProgress:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/FragmentBeauty;)Lio/reactivex/FlowableEmitter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/FragmentBeauty;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/ui/SeekBarCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/FragmentBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    return-object p0
.end method

.method private feedRotation(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setDegree(I)V

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setScreenOrientation(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private hideBeautyLayout(II)Z
    .locals 4

    iget v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isHiddenBeautyPanelOnShutter()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    iput v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBeauty;->moveAIWatermark(I)V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setTargetShow(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-nez v3, :cond_3

    return v2

    :cond_3
    const/4 v2, 0x1

    if-eq p2, v2, :cond_6

    const/16 v3, 0xc5

    if-eq p2, v1, :cond_5

    if-eq p2, v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onRestoreCameraActionMenu(I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onRestoreCameraActionMenu(I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->resetFragment()V

    :goto_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    invoke-static {p2}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->onDismissFinished(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p2, 0xa4

    invoke-virtual {p0, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onShineDismiss(I)V

    :cond_7
    return v2
.end method

.method private initAdjustSeekBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBeauty$2;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$1;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->onBackpressureDrop(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080877

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    new-instance v1, Lcom/android/camera/fragment/FragmentBeauty$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBeauty$3;-><init>(Lcom/android/camera/fragment/FragmentBeauty;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setOnSeekBarChangeListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;)V

    return-void
.end method

.method private initShineType()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a0089

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070102

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070121

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v6, 0xa5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :goto_1
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautySettingManager;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautySettingManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    :cond_4
    iput v7, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    invoke-direct {p0, v7}, Lcom/android/camera/fragment/FragmentBeauty;->moveAIWatermark(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0, v8}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setTargetShow(Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initAdjustSeekBar()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/android/camera/fragment/FragmentBeauty;->initShineType(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initViewPager()V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setViewPagerPageByType(Ljava/lang/String;)V

    return-void
.end method

.method private initShineType(Ljava/lang/String;Z)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setCurrentType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isSkinColorShow()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideSkinColor(Z)V

    :cond_1
    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x39

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x620

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "19"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move p2, v3

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "18"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0x8

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "17"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0x9

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "16"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x4

    goto/16 :goto_0

    :pswitch_4
    const-string v1, "15"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x7

    goto :goto_0

    :pswitch_5
    const-string v1, "14"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0xd

    goto :goto_0

    :pswitch_6
    const-string v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0xb

    goto :goto_0

    :pswitch_7
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0xa

    goto :goto_0

    :pswitch_8
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x6

    goto :goto_0

    :pswitch_9
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x5

    goto :goto_0

    :pswitch_a
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x3

    goto :goto_0

    :pswitch_b
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "11"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 p2, 0xc

    goto :goto_0

    :cond_3
    const-string v1, "9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move p2, v0

    :cond_4
    :goto_0
    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_2

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    goto/16 :goto_1

    :pswitch_c
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoBokehColorRetention()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/fragment/beauty/BeautySettingManager;->constructAndGetSetting(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    goto :goto_1

    :pswitch_d
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/fragment/beauty/BeautySettingManager;->constructAndGetSetting(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    goto :goto_1

    :pswitch_e
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/fragment/beauty/BeautySettingManager;->constructAndGetSetting(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    goto :goto_1

    :pswitch_f
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/fragment/beauty/BeautySettingManager;->constructAndGetSetting(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    goto :goto_1

    :pswitch_10
    const-string p1, "mi_live_click_kaleidoscope"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackKaleidoscopeClick(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    goto :goto_1

    :pswitch_11
    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    goto :goto_1

    :pswitch_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not allowed, see onMakeupItemSelected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x623
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private initViewPager()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    const-string v3, "18"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_2

    :pswitch_1
    const-string v3, "17"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_2

    :pswitch_2
    const-string v3, "16"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_2

    :pswitch_3
    const-string v3, "15"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_2

    :pswitch_4
    const-string v3, "14"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_2

    :pswitch_5
    const-string v3, "13"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_2

    :pswitch_6
    const-string v3, "12"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_2

    :pswitch_7
    const-string v3, "11"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0xa

    goto :goto_2

    :pswitch_8
    const-string v3, "10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x9

    goto :goto_2

    :pswitch_9
    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :pswitch_a
    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :pswitch_b
    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :pswitch_c
    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :pswitch_d
    const-string v4, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :pswitch_e
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v4

    goto :goto_2

    :pswitch_f
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v5

    goto :goto_2

    :cond_0
    :goto_1
    move v3, v6

    :goto_2
    packed-switch v3, :pswitch_data_2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unknown beauty type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_10
    new-instance v2, Lcom/android/camera/fragment/beauty/MiNightParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/MiNightParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_11
    new-instance v2, Lcom/android/camera/fragment/live/FragmentKaleidoscope;

    invoke-direct {v2}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_12
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoBokehColorRetention()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    new-instance v2, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_13
    new-instance v2, Lcom/android/camera/fragment/live/FragmentLiveSpeed;

    invoke-direct {v2}, Lcom/android/camera/fragment/live/FragmentLiveSpeed;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_14
    new-instance v2, Lcom/android/camera/fragment/live/FragmentLiveSticker;

    invoke-direct {v2}, Lcom/android/camera/fragment/live/FragmentLiveSticker;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_15
    new-instance v2, Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/LiveBeautyModeFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_16
    new-instance v2, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_17
    new-instance v2, Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {v2}, Lcom/android/camera/fragment/FragmentFilter;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_18
    new-instance v2, Lcom/android/camera/fragment/beauty/BeautyBodyFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/BeautyBodyFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_19
    new-instance v2, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1a
    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupBeautyFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/MakeupBeautyFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1b
    new-instance v2, Lcom/android/camera/fragment/beauty/MiLiveParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/MiLiveParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1c
    new-instance v2, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/RemodelingParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1d
    new-instance v2, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1e
    new-instance v2, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1f
    new-instance v2, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    invoke-direct {v2}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->feedRotation(Ljava/util/List;)V

    new-instance v1, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    sget-object v1, Lcom/android/camera/fragment/-$$Lambda$FragmentBeauty$TNJSatWOgRFKpHkGpIz0Xtjtopw;->INSTANCE:Lcom/android/camera/fragment/-$$Lambda$FragmentBeauty$TNJSatWOgRFKpHkGpIz0Xtjtopw;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v4, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/camera/NoClipChildrenLayout;

    if-eqz p0, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/NoClipChildrenLayout;

    invoke-interface {p0, v4}, Lcom/android/camera/NoClipChildrenLayout;->setNoClip(Z)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private isHiddenBeautyPanelOnShutter()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xae

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa9

    if-ne p0, v0, :cond_0

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

.method static synthetic lambda$initViewPager$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private moveAIWatermark(I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needMoveUp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->getDistanceForWM()I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->moveWatermarkLayout(II)V

    :cond_0
    return-void
.end method

.method private onDismissFinished(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->resetFragment()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isHiddenBeautyPanelOnShutter()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa3

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa5

    if-ne v1, v2, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->resetTips()V

    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private resetFragment()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->recycleFragmentList(Landroidx/fragment/app/FragmentManager;)V

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    :cond_0
    return-void
.end method

.method private resetTips()V
    .locals 4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipBottomMargin(IZ)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->showZoomTipImage()V

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xa3

    if-eq p0, v3, :cond_2

    const/16 v3, 0xa5

    if-eq p0, v3, :cond_3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v3, 0xc3

    invoke-virtual {p0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    if-eqz p0, :cond_3

    invoke-interface {p0, v2}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showOrHideChip(Z)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->updateLyingDirectHint(ZZ)V

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckSkinColor()V

    :cond_5
    return-void
.end method

.method private setAdjustSeekBarVisible(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    return-void
.end method

.method private setSeekBarMode(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_1
    const/16 p1, 0xc8

    iput p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarMaxProgress:I

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f08012a

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    move p2, v0

    move p1, v1

    goto :goto_1

    :cond_2
    iput v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarMaxProgress:I

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080877

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SeekBarCompat;->setCenterTwoWayMode(Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "18"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMin(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarMaxProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/SeekBarCompat;->setSeekBarPinProgress(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-interface {p1}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->getProgressByCurrentItem()I

    move-result p1

    mul-int/2addr p1, v1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(IZ)V

    return-void
.end method

.method private setViewPagerPageByType(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setDegree(I)V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->setScreenOrientation(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {p0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private showOrHideSkinColor(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onSwitchBeautySkinColor(Lcom/android/camera/data/data/runing/ComponentRunningShine;Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    return-void
.end method

.method private showZoomTipImage()V
    .locals 3

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa5

    const/16 v2, 0xb6

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showBokehButton()V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportPanorama2X()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    :pswitch_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    :pswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/mi/config/DataItemFeature;->isSupportFrontZoom(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportPixelModelZoom()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportPixelModelSwitchCameraId()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn(I)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xad
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->setProgressForCurrentItem(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public clearBeauty()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->clearBeauty()V

    :cond_0
    return-void
.end method

.method public dismiss(I)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->hideBeautyLayout(II)Z

    return-void
.end method

.method protected getAnimationType()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getDistanceForWM()I
    .locals 6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x31

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x32

    if-eq v1, v2, :cond_2

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    const/16 v2, 0x625

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_3
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x7f070102

    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070127

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    return v0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xfb

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d004a

    return p0
.end method

.method public getSupportedBeautyItems(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautySettingManager:Lcom/android/camera/fragment/beauty/BeautySettingManager;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/fragment/beauty/BeautySettingManager;->constructAndGetSetting(Ljava/lang/String;Lcom/android/camera/data/data/runing/TypeElementsBeauty;)Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->getSupportedTypeArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/NoScrollViewPager;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    const v0, 0x7f0a007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/SeekBarCompat;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initShineType()V

    return-void
.end method

.method public isBeautyPanelShow()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSeekBarVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSkinColorShow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    return p0
.end method

.method public needViewClear()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->needViewClear()Z

    move-result p0

    return p0
.end method

.method public onBackEvent(I)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBeauty;->hideBeautyLayout(II)Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onMakeupItemSelected(Ljava/lang/String;IZ)V
    .locals 4
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "pref_beautify_color_skin_ratio_key"

    if-ne p1, v2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->isSkinColorShow()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->showOrHideSkinColor(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mComponentRunningShine:Lcom/android/camera/data/data/runing/ComponentRunningShine;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2, p1, p3}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->setCurrentType(Ljava/lang/String;Z)V

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-interface {p3, p2}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->setDisplayNameRes(I)V

    const-string p2, "key_video_bokeh_blur_null"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    return-void

    :cond_3
    const-string p2, "pref_beautify_makeups_none"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBeauty;->resetBeauty()V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    invoke-interface {p2}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->getDefaultProgressByCurrentItem()I

    move-result p2

    mul-int/2addr p2, v1

    invoke-static {p1}, Lcom/android/camera/constant/BeautyConstant;->isSupportTwoWayAdjustable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBeauty;->setSeekBarMode(II)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1, p2}, Lcom/android/camera/fragment/FragmentBeauty;->setSeekBarMode(II)V

    :goto_1
    invoke-direct {p0, v1, v1}, Lcom/android/camera/fragment/FragmentBeauty;->setAdjustSeekBarVisible(ZZ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/NoClipChildrenLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/camera/NoClipChildrenLayout;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/camera/NoClipChildrenLayout;->setNoClip(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_0

    const v1, 0x7f0a0089

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const/16 v1, 0xfb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/FragmentBeauty;->hideBeautyLayout(II)Z

    :cond_0
    return-void
.end method

.method public onStateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->onStateChanged()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BasePanelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p1, 0xa3

    if-ne p0, p1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xc3

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showOrHideChip(Z)V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    iget p2, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x7

    if-ne p3, p2, :cond_2

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa9

    if-ne p1, p2, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->onBackEvent(I)Z

    return-void
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideOrientationChanged(ILjava/util/List;I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    instance-of p0, v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz p0, :cond_1

    check-cast v0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->provideOrientationChanged(ILjava/util/List;I)V

    :cond_1
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mBeautyPagerAdapter:Lcom/android/camera/fragment/BaseFragmentPagerAdapter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/BaseFragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->provideRotateItem(Ljava/util/List;I)V

    :cond_1
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xc2

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb4

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    return-void
.end method

.method public resetBeauty()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentSettingBusiness:Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/fragment/beauty/IBeautySettingBusiness;->resetBeauty()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showOrHideChip(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBeauty;->initShineType()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBeauty;->mRootView:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance4Filter(Landroid/view/View;)V

    return-void
.end method

.method public switchShineType(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBeauty;->initShineType(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->setViewPagerPageByType(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->moveAIWatermark(I)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xc2

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    const/16 v0, 0xb4

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBeauty;->mIsSkinColorShow:Z

    return-void
.end method
