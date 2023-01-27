.class public Lcom/android/camera/fragment/FragmentBottomPopupTips;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomPopupTips.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;,
        Lcom/android/camera/fragment/FragmentBottomPopupTips$TipImageType;
    }
.end annotation


# static fields
.field private static final ANIM_DELAY_SHOW:I = 0x3

.field private static final ANIM_DIRECT_HIDE:I = 0x1

.field private static final ANIM_DIRECT_SHOW:I = 0x0

.field private static final ANIM_HIDE:I = 0x4

.field private static final ANIM_SHOW:I = 0x2

.field private static final CALL_TYPE_NOTIFY:I = 0x1

.field private static final CALL_TYPE_PROVIDE:I = 0x0

.field public static final FRAGMENT_INFO:I = 0xfff9

.field private static final I_AI_TIP_DELAY_HIDE_MS:I = 0xbb8

.field private static final LEFT_TIP_IMAGE_AI_WATERMARK:I = 0x17

.field private static final LEFT_TIP_IMAGE_CLOSE:I = 0x14

.field private static final LEFT_TIP_IMAGE_FAST_MOTION:I = 0x19

.field private static final LEFT_TIP_IMAGE_KALEIDOSCOPE:I = 0x16

.field private static final LEFT_TIP_IMAGE_LIGHTING:I = 0x13

.field private static final LEFT_TIP_IMAGE_SPEED:I = 0x21

.field private static final LEFT_TIP_IMAGE_STICKER:I = 0x12

.field private static final LEFT_TIP_IMAGE_SUPER_MOON:I = 0x20

.field private static final LEFT_TIP_IMAGE_ULTRA_WIDE:I = 0x15

.field private static final LEFT_TIP_IMAGE_VIDEO_BEAUTY:I = 0x18

.field private static final LEFT_TIP_IMAGE_VIDEO_SKY:I = 0x23

.field private static final MAX_RED_DOT_TIME:J = 0x5265c00L

.field private static final MSG_HIDE_AI_TIP:I = 0x2

.field private static final MSG_HIDE_QR_TIP:I = 0x3

.field private static final MSG_HIDE_TIP:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TIP_DOC_MODE:I = 0x5

.field private static final TIP_FASTMOTION_PRO:I = 0x25

.field private static final TIP_ID_CARD:I = 0x4

.field private static final TIP_IMAGE_INVALID:I = -0x1

.field private static final TIP_IMAGE_STICKER:I = 0x2

.field private static final TIP_MIMOJI:I = 0x22

.field private static final TIP_QR_ENTRY:I = 0x6

.field private static final TIP_SHINE:I = 0x3

.field private static final TIP_SWITCH_CAMERA:I = 0x24


# instance fields
.field private INIT_TAG:Z

.field private disableTipImageAlphaInOnce:Z

.field private mBottomTipHeight:I

.field private mCenterRedDot:Landroid/view/View;

.field private mCenterTipImage:Landroid/widget/ImageView;

.field private mCloseType:I

.field private mCurrentTipMessage:Ljava/lang/String;

.field private mCurrentTipType:I

.field private mHandler:Landroid/os/Handler;

.field mImageTipHandler:Landroid/os/Handler;

.field private mIsShowLeftImageIntro:Z

.field private mIsShowLyingDirectHint:Z

.field private mLastTipMessage:Ljava/lang/String;

.field private mLastTipType:I

.field private mLeftImageIntro:Landroid/widget/FrameLayout;

.field private mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

.field private mLeftImageIntroContent:Landroid/widget/TextView;

.field private mLeftImageIntroRadius:I

.field private mLeftImageIntroWidth:I

.field private mLeftTipExtraImage:Landroid/widget/ImageView;

.field private mLeftTipImage:Landroid/widget/ImageView;

.field private mLyingDirectHint:Landroid/widget/TextView;

.field private mNearRangeModeButton:Landroid/widget/LinearLayout;

.field private mNightCaptureExpTime:I

.field private mNightCountDownTimer:Landroid/os/CountDownTimer;

.field private mNightSeTipCancelButton:Landroid/widget/ImageView;

.field private mNightSeTipContent:Landroid/widget/TextView;

.field private mNightSeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

.field private mPopupTipLabel:Ljava/lang/Integer;

.field private mPortraitSuccessHint:Landroid/view/View;

.field private mRightTipExtraImage:Landroid/widget/ImageView;

.field private mRightTipImage:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mTipImage:Landroid/widget/ImageView;

.field private mTipMessage:Landroid/widget/TextView;

.field mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->INIT_TAG:Z

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCloseType:I

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->disableTipImageAlphaInOnce:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mImageTipHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/fragment/FragmentBottomPopupTips;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntro:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->setBeautyIntroButtonWidth(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/camera/fragment/FragmentBottomPopupTips;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/FragmentBottomPopupTips;IILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage(IILjava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipContent:Landroid/widget/TextView;

    return-object p0
.end method

.method private adjustViewBackground(I)V
    .locals 0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    return-void
.end method

.method private aiTipDocEnabled()Z
    .locals 0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSettingAiTipOfDocEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDocumentMode2()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDocumentMode()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private applyAnimType(Ljava/util/List;IZLandroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;IZ",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    :goto_0
    move p0, v3

    goto :goto_2

    :cond_0
    :goto_1
    move p0, v4

    goto :goto_2

    :cond_1
    const/16 v5, 0xa5

    if-eqz p3, :cond_4

    if-ne p2, v5, :cond_3

    invoke-static {}, Lcom/mi/config/Device;->isSupportedOpticalZoom()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v1

    goto :goto_2

    :cond_3
    move p0, v2

    goto :goto_2

    :cond_4
    if-eq p2, v5, :cond_0

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p0, v5, :cond_5

    goto :goto_1

    :cond_5
    move p0, v0

    :goto_2
    if-eqz p0, :cond_a

    if-eq p0, v4, :cond_9

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {p4}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    :cond_7
    new-instance p0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {p0, p4}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p2, 0x96

    invoke-virtual {p0, p2}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance p0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {p0, p4}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-static {p4}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    :cond_a
    new-instance p0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {p0, p4}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_3
    new-array p0, v4, [Landroid/view/View;

    aput-object p4, p0, v3

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    return-void
.end method

.method private checkAIWatermarkTip()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "aiwatermark_first_use"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->startFromKeyGuard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f110139

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private clickAIWatermarkListEnter()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfd

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showAIWatermark(I)V

    return-void
.end method

.method private clickPopupTip(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "onClick popup_tip_image: type=0x%x"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->setPopupTipBeautyIntroClicked()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v4, 0xb3

    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    const/4 v5, 0x2

    if-eq v0, v5, :cond_b

    const/4 v5, 0x3

    if-eq v0, v5, :cond_a

    const/4 v5, 0x4

    if-eq v0, v5, :cond_9

    const/4 v5, 0x5

    if-eq v0, v5, :cond_7

    const/4 v4, 0x6

    if-eq v0, v4, :cond_6

    const/16 v4, 0x22

    if-eq v0, v4, :cond_2

    const/16 p1, 0x25

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showFastMotionProPanel()V

    goto/16 :goto_1

    :cond_2
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb8

    if-ne p0, v0, :cond_c

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "mimoji_click_create_switch"

    const-string v0, "create"

    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_c

    new-array p0, v3, [Landroid/view/View;

    aput-object p1, p0, v6

    invoke-interface {v2, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->changeCamera([Landroid/view/View;)V

    goto/16 :goto_1

    :cond_5
    :goto_0
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xc3

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showQRCodeResult()V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, v6}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showAIDocTip(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    if-nez p1, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setEntranceMode(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningZoom()Lcom/android/camera/data/data/config/ComponentRunningZoom;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentRunningZoom;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/android/camera/HybridZoomingSystem;->toFloat(Ljava/lang/String;F)F

    move-result p0

    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickPopupTip: TIP_DOC_MODE, pass zoom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->provideTransientZoomRatio(F)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    const/16 v0, 0xba

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f110105

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1, v6}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->changeModeByNewMode(ILjava/lang/String;I)V

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiTipDoc()V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    invoke-direct {p0, v6}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showIDCardTip(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa4

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    const/16 p1, 0xa6

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiTipCard()V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showBeauty(I)V

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    :cond_c
    :goto_1
    return-void
.end method

.method private closeFilter()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideFilter()V

    :cond_0
    return-void
.end method

.method private closeLight()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideLighting(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage()V

    return-void
.end method

.method private configRootLayoutWidth(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->fitDisplay16_10()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result p1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->getCenterDisplayWidth()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    iget-object p1, p1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {}, Lcom/android/camera/Display;->fitDisplay16_10()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/Display;->getCenterDisplayWidth()I

    move-result v0

    :goto_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v1, p1, :cond_3

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private currentIsIDCardShow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getLeftImageIntroWide()I
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroContent:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07060c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07060e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroRadius:I

    sub-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private getTipBottomMargin(I)I
    .locals 7

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb5

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xc2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070101

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const v5, 0x7f070395

    const/16 v6, 0xa5

    if-ne v4, v6, :cond_3

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    :goto_0
    sub-int/2addr p0, p1

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lcom/android/camera/Display;->getSquareBottomCoverHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0706b7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    goto/16 :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->visibleHeight()I

    move-result v4

    if-lez v4, :cond_4

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->visibleHeight()I

    move-result p0

    goto/16 :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const v4, 0x7f070102

    if-nez v1, :cond_6

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_1
    add-int/2addr p0, v3

    goto/16 :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    goto/16 :goto_2

    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isButtonVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->visibleHeight()I

    move-result p0

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v6, 0xa2

    invoke-virtual {v1, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->isSeekBarVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070127

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_9
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowLightingView()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    goto/16 :goto_0

    :goto_2
    return p0
.end method

.method private hideAllTipImage()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hidePanelEnter()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLeftImageIntro()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideZoomTipImage(I)V

    return-void
.end method

.method private hidePanelEnter()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideLeftTipImage()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideRightTipImage()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTipImage()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideCenterTipImage()V

    return-void
.end method

.method private hideTip(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hideZoomTipImage(I)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa6

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xad

    if-eq p1, v0, :cond_3

    const/16 v0, 0xae

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isSupportPanorama2X()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :pswitch_0
    sget-boolean p1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :pswitch_1
    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_4

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ignoreClick()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa1

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isCaptureModeExceptRatio(II)Z
    .locals 1

    const/16 p0, 0xa3

    const/16 v0, 0xa5

    if-ne p1, v0, :cond_0

    if-eq p2, p0, :cond_1

    :cond_0
    if-ne p1, p0, :cond_2

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPanelVisible()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomPanelVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPortraitSuccessHintVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showQrCodeTip$1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showTips$0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateExtraTipForZoom$3(Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v2, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic lambda$updateTipImage$2(Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    return-void
.end method

.method private onLeftImageClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "onClick onLeftImageClick: type=0x%x"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    if-eqz v0, :cond_5

    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideVideoSky(Z)V

    goto/16 :goto_0

    :pswitch_1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p1, 0xb8

    if-ne p0, p1, :cond_5

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result p0

    if-ne p0, v2, :cond_0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    goto/16 :goto_0

    :cond_0
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    const-string p1, "mi_live_click_speed"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showLiveSpeed()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showSuperMoonEffect(I)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhance()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showFastMotionPanel()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showOrHideVideoBeautyPanel()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->clickAIWatermarkListEnter()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showKaleidoscope()V

    goto :goto_0

    :pswitch_8
    if-eqz v0, :cond_5

    sget-boolean p0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez p0, :cond_5

    const/16 p0, 0xcd

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_0

    :pswitch_9
    iget p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCloseType:I

    if-eq p1, v2, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->closeLight()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->closeFilter()V

    goto :goto_0

    :pswitch_a
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    const/16 p0, 0xcb

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showBeauty(I)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reConfigBottomTipOfMimoji()V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateMimojiBottomTipImage()V

    :cond_0
    return-void
.end method

.method private reIntTipViewMarginBottom(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getTipBottomMargin(I)I

    move-result p0

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq p2, p0, :cond_0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setBeautyIntroButtonWidth(Landroid/view/View;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showAIDocTip(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isQRTipVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->aiTipDocEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private showAIWatermark(I)V
    .locals 0

    const/16 p0, 0xa3

    if-eq p1, p0, :cond_0

    const/16 p0, 0xcd

    if-eq p1, p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa4

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideAIWatermark()V

    :cond_1
    return-void
.end method

.method private showBeauty(I)V
    .locals 0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa4

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideShine()V

    :cond_0
    return-void
.end method

.method private showIDCardTip(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isQRTipVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSettingAiTipOfCardEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p1, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage(IILjava/util/List;)V

    return-void
.end method

.method private showKaleidoscope()V
    .locals 0

    return-void
.end method

.method private showLiveSpeed()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xc5

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    if-eqz p0, :cond_0

    const/16 v0, 0xa5

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onSwitchLiveActionMenu(I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_1

    const/16 v0, 0xd

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_1
    return-void
.end method

.method private showLiveSticker()V
    .locals 1

    const-string p0, "live_sticker"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xc5

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    if-eqz p0, :cond_0

    const/16 v0, 0xa4

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onSwitchLiveActionMenu(I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_1

    const/16 v0, 0xc

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_2
    return-void
.end method

.method private showSuperMoonEffect(I)V
    .locals 1

    sget-object p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "showSuperMoonEffect E"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xbc

    if-eq p1, p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa4

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string v0, "prepare to call showOrHideAIWatermark"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideAIWatermark()V

    :cond_1
    sget-object p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "showSuperMoonEffect X"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startLeftImageIntroAnim(I)V
    .locals 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directShowOrHideLeftTipImage(Z)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntro:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_1

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroWidth:I

    aput v3, v2, p1

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroRadius:I

    mul-int/2addr v3, v1

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroContent:Landroid/widget/TextView;

    new-array v4, v1, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, p1

    aput-object v3, v1, v0

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$5;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$5;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntro:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->addPopupUltraWideIntroShowTimes()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateCenterTipImage(IILjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0xae

    const/16 v3, 0x22

    const/16 v4, 0x12

    const/4 v5, -0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreview()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    iget-object v6, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    const v7, 0x7f0a02f8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    const v8, 0x7f080409

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v2, v5, :cond_9

    const/16 v5, 0x51

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_3

    move v4, v10

    move v8, v4

    goto/16 :goto_3

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110087

    const-string v11, "add_state"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "close_state"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v10, v9

    :cond_4
    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSticker()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v9

    iget-object v4, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterRedDot:Landroid/view/View;

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTTLiveStickerNeedRedDot()Z

    move-result v4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getLiveStickerRedDotTime()J

    move-result-wide v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-lez v15, :cond_6

    sub-long/2addr v13, v11

    const-wide/32 v11, 0x5265c00

    cmp-long v11, v13, v11

    if-gez v11, :cond_7

    :cond_6
    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterRedDot:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    sget-boolean v4, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v4, :cond_8

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    :cond_8
    const v4, 0x800053

    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_2
    move v4, v10

    move v10, v3

    goto :goto_3

    :cond_9
    iget-object v3, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterRedDot:Landroid/view/View;

    if-eqz v3, :cond_a

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    move v4, v10

    move v8, v4

    move v9, v8

    :goto_3
    if-lez v8, :cond_c

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object v3, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    check-cast v3, Lcom/android/camera/ui/ColorImageView;

    if-eqz v10, :cond_b

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v5

    goto :goto_4

    :cond_b
    const v5, -0x141415

    :goto_4
    invoke-virtual {v3, v5}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    iget-object v3, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    if-lez v4, :cond_d

    iget-object v3, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v3, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateImageBgColor(ILandroid/view/View;)V

    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_e

    return-void

    :cond_e
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v3, v2, v9, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->applyAnimType(Ljava/util/List;IZLandroid/view/View;)V

    return-void
.end method

.method private updateImageBgColor(ILandroid/view/View;)V
    .locals 2

    const p0, 0x7f080891

    const/16 v0, 0xb8

    const v1, 0x7f0800ee

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->popupSolidPattern()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const p0, 0x7f0800ef

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result p0

    if-eqz p0, :cond_3

    const v1, 0x7f0800ec

    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private updateLeftTipExtraImage(IILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xb8

    const/16 v2, 0x22

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->supportMimojiVersion()I

    move-result v1

    if-le v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreviewPlay()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result p1

    if-ne p1, v4, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v3

    :goto_1
    const/4 v1, 0x0

    if-eq p1, v3, :cond_6

    const/16 v3, 0x16

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_3

    move v2, v1

    move v3, v2

    move v5, v3

    :goto_2
    move v6, v4

    move v7, v6

    goto :goto_4

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiBgInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    const v3, 0x7f080415

    const v5, 0x7f110087

    goto :goto_2

    :cond_5
    const v3, 0x7f080401

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->isSwitchOn()Z

    move-result v2

    move v5, v1

    move v7, v5

    move v6, v4

    goto :goto_4

    :cond_6
    move v2, v1

    move v3, v2

    move v5, v3

    move v6, v5

    move v7, v4

    :goto_4
    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p1, :cond_8

    move v4, v1

    :cond_8
    move-object v1, v0

    check-cast v1, Lcom/android/camera/ui/ColorImageView;

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v2

    goto :goto_5

    :cond_9
    const v2, -0x141415

    :goto_5
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    if-nez v4, :cond_a

    return-void

    :cond_a
    if-lez v3, :cond_b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    if-lez v5, :cond_c

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    if-eqz v6, :cond_d

    if-eqz v7, :cond_d

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    :goto_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p3, p2, v6, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->applyAnimType(Ljava/util/List;IZLandroid/view/View;)V

    return-void
.end method

.method private updateLeftTipImage(IIILjava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/BaseModule;

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/config/DataItemFeature;->isSupportUltraWide()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v5, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v8

    const/16 v9, 0xc2

    invoke-virtual {v8, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v8

    check-cast v8, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v9

    const/16 v10, 0x3a6

    invoke-virtual {v9, v10}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v9

    check-cast v9, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    const/16 v10, 0xa5

    const/16 v11, 0x18

    const-string v12, "0"

    const/4 v14, 0x3

    const/16 v15, 0x13

    const/16 v6, 0xab

    const/4 v13, -0x1

    const/16 v17, 0x15

    if-eq v1, v10, :cond_20

    const/16 v10, 0xa9

    if-eq v1, v10, :cond_19

    if-eq v1, v6, :cond_14

    const/16 v2, 0xbc

    if-eq v1, v2, :cond_13

    const/16 v2, 0xcd

    if-eq v1, v2, :cond_12

    const/16 v2, 0xd7

    if-eq v1, v2, :cond_11

    const/16 v2, 0xad

    if-eq v1, v2, :cond_f

    const/16 v2, 0xae

    if-eq v1, v2, :cond_e

    const/16 v2, 0xb7

    if-eq v1, v2, :cond_d

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_c

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_6

    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v2

    if-nez v2, :cond_18

    :cond_4
    if-eqz v9, :cond_5

    invoke-interface {v9}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_6

    :cond_5
    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_6

    :cond_6
    iget-boolean v2, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->startLeftImageIntroAnim(I)V

    return-void

    :cond_7
    move/from16 v17, v13

    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isTopBeautyEntry()Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v7

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isTargetShow()Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz v8, :cond_a

    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    move v2, v11

    goto/16 :goto_7

    :pswitch_1
    if-eqz v5, :cond_18

    if-nez v3, :cond_18

    iget-boolean v2, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    if-eqz v2, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->startLeftImageIntroAnim(I)V

    return-void

    :cond_b
    move/from16 v2, v17

    goto/16 :goto_7

    :cond_c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result v3

    if-nez v3, :cond_18

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->supportMimojiVersion()I

    move-result v3

    if-le v3, v7, :cond_18

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result v2

    if-nez v2, :cond_18

    const/16 v2, 0x22

    goto/16 :goto_7

    :cond_d
    const/16 v2, 0x21

    goto/16 :goto_7

    :cond_e
    if-eqz v5, :cond_18

    if-nez v3, :cond_18

    iget-boolean v2, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    if-eqz v2, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->startLeftImageIntroAnim(I)V

    return-void

    :cond_f
    if-eqz v4, :cond_18

    if-eq v3, v7, :cond_10

    goto/16 :goto_6

    :cond_10
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportSuperNightVideo()Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v14

    goto/16 :goto_7

    :cond_11
    const/16 v2, 0x23

    goto/16 :goto_7

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->checkAIWatermarkTip()V

    :goto_2
    const/16 v2, 0x17

    goto/16 :goto_7

    :cond_13
    const/16 v2, 0x20

    goto/16 :goto_7

    :cond_14
    if-eqz v4, :cond_18

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getPortraitLightingVersion()I

    move-result v2

    if-ne v2, v7, :cond_15

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    return-void

    :cond_15
    if-eqz v3, :cond_17

    if-eq v3, v7, :cond_16

    goto :goto_4

    :cond_16
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportPortraitLightingFront()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_3

    :cond_17
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportPortraitLightingBack()Z

    move-result v2

    if-eqz v2, :cond_18

    :goto_3
    move v2, v15

    goto/16 :goto_7

    :cond_18
    :goto_4
    move v2, v13

    goto/16 :goto_7

    :cond_19
    if-nez v3, :cond_1c

    if-eqz v4, :cond_1c

    if-eqz v5, :cond_1c

    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_6

    :cond_1a
    iget-boolean v2, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    if-eqz v2, :cond_1b

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->startLeftImageIntroAnim(I)V

    return-void

    :cond_1b
    move/from16 v2, v17

    goto :goto_5

    :cond_1c
    if-eqz v4, :cond_1e

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhance()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    const/16 v2, 0x19

    goto :goto_5

    :cond_1e
    move v2, v13

    :goto_5
    if-eqz v8, :cond_1f

    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v3

    if-nez v3, :cond_18

    :cond_1f
    if-eqz v9, :cond_25

    invoke-interface {v9}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_4

    :cond_20
    :pswitch_2
    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_6

    :cond_21
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v2

    if-eqz v2, :cond_22

    :goto_6
    goto :goto_4

    :cond_22
    if-eqz v5, :cond_23

    if-nez v3, :cond_23

    iget-boolean v2, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    if-eqz v2, :cond_24

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->startLeftImageIntroAnim(I)V

    return-void

    :cond_23
    move/from16 v17, v13

    :cond_24
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needForceDisable(I)Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v2, :cond_b

    goto/16 :goto_2

    :cond_25
    :goto_7
    const v3, 0x7f08040f

    const v4, 0x7f110026

    if-eq v2, v13, :cond_32

    if-eq v2, v14, :cond_31

    const/16 v5, 0x12

    if-eq v2, v5, :cond_2f

    if-eq v2, v15, :cond_2e

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_8
    const/16 v16, 0x0

    goto/16 :goto_12

    :pswitch_3
    const v4, 0x7f1100d0

    goto/16 :goto_c

    :pswitch_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v4

    const v5, 0x7f080415

    if-eqz v4, :cond_27

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiBgInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    move-result-object v3

    if-nez v3, :cond_26

    move v13, v2

    move v6, v5

    goto :goto_9

    :cond_26
    move v13, v2

    move v6, v5

    move/from16 v16, v7

    goto :goto_a

    :cond_27
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_9
    const/16 v16, 0x0

    :goto_a
    const v2, 0x7f110084

    move v4, v2

    move v2, v13

    goto/16 :goto_12

    :cond_28
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiTimbreInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

    move-result-object v3

    if-nez v3, :cond_29

    const/4 v6, 0x0

    goto :goto_b

    :cond_29
    move v6, v7

    :goto_b
    const v3, 0x7f080417

    const v4, 0x7f110088

    move/from16 v16, v6

    move v6, v3

    goto/16 :goto_12

    :pswitch_5
    const v6, 0x7f080408

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSpeed()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v7

    const v4, 0x7f110081

    goto/16 :goto_11

    :pswitch_6
    const v6, 0x7f0803b9

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->isSwitchOn()Z

    move-result v3

    const v4, 0x7f1100be

    goto/16 :goto_11

    :pswitch_7
    const v3, 0x7f0803f1

    const v4, 0x7f110059

    goto :goto_c

    :pswitch_8
    const v3, 0x7f0801ef

    const v4, 0x7f110022

    :cond_2a
    :goto_c
    :pswitch_9
    move v6, v3

    goto/16 :goto_8

    :pswitch_a
    const v3, 0x7f080401

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->isSwitchOn()Z

    move-result v4

    if-eqz v4, :cond_2b

    move v6, v3

    goto :goto_f

    :cond_2b
    move v6, v3

    goto :goto_10

    :pswitch_b
    iget v3, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    const v4, 0x7f080536

    goto :goto_d

    :cond_2c
    const v4, 0x7f080535

    :goto_d
    if-eqz v3, :cond_2d

    const v3, 0x7f1100ca

    goto :goto_e

    :cond_2d
    const v3, 0x7f1100c9

    :goto_e
    move v6, v4

    const/16 v16, 0x0

    move v4, v3

    goto :goto_12

    :cond_2e
    const v3, 0x7f08041f

    const v4, 0x7f11007a

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    if-eq v5, v12, :cond_2a

    move v6, v3

    move/from16 v16, v7

    goto :goto_12

    :cond_2f
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSticker()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080409

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v6, v4

    if-nez v3, :cond_30

    :goto_f
    move/from16 v16, v7

    const/4 v4, 0x0

    goto :goto_12

    :cond_30
    :goto_10
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_31
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getBottomEntryRes(I)I

    move-result v6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result v3

    :goto_11
    move/from16 v16, v3

    goto :goto_12

    :cond_32
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_8

    :goto_12
    iget-object v3, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    if-nez v3, :cond_33

    return-void

    :cond_33
    if-lez v6, :cond_34

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_34
    iget-object v3, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    check-cast v3, Lcom/android/camera/ui/ColorImageView;

    if-eqz v16, :cond_35

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v5

    goto :goto_13

    :cond_35
    const v5, -0x141415

    :goto_13
    invoke-virtual {v3, v5}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    if-lez v4, :cond_36

    iget-object v3, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_36
    iget-object v3, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateImageBgColor(ILandroid/view/View;)V

    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_37

    return-void

    :cond_37
    if-eqz v7, :cond_39

    if-ne v2, v11, :cond_38

    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_14

    :cond_38
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    iget v3, v0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    :cond_39
    :goto_14
    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v3, v2, v7, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->applyAnimType(Ljava/util/List;IZLandroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private updateRightExtraTipImage(IILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomPanelVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const/16 v4, 0xa3

    const/4 v5, 0x3

    const/4 v6, -0x1

    if-eq p1, v4, :cond_5

    const/16 v1, 0xb7

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMiLiveSegmentData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MW"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isFoldingPhone()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    move v1, v5

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v6

    :goto_2
    if-eq v1, v6, :cond_8

    if-eq v1, v5, :cond_7

    move v6, v2

    move p1, v3

    move v4, p1

    move v5, v4

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getBottomEntryRes(I)I

    move-result v4

    const v5, 0x7f110026

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p1

    move v6, v2

    goto :goto_3

    :cond_8
    move p1, v3

    move v4, p1

    move v5, v4

    move v6, v5

    :goto_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v1, :cond_9

    move v2, v3

    :cond_9
    if-lez v4, :cond_b

    move-object v3, v0

    check-cast v3, Lcom/android/camera/ui/ColorImageView;

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p1

    goto :goto_4

    :cond_a
    const p1, -0x141415

    :goto_4
    invoke-virtual {v3, p1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    if-lez v5, :cond_c

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    if-eqz v6, :cond_d

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float p1, p1

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_5

    :cond_d
    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    :goto_5
    if-nez v2, :cond_e

    return-void

    :cond_e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p3, p2, v6, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->applyAnimType(Ljava/util/List;IZLandroid/view/View;)V

    return-void
.end method

.method private updateRightTipImage(IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    const/16 v1, 0xad

    const/4 v2, -0x1

    const/16 v3, 0x24

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb7

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMiLiveSegmentData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MW"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isFoldingPhone()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->supportSuperNightVideo()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    :goto_0
    move p1, v3

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v2

    :goto_2
    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eq p1, v2, :cond_6

    if-eq p1, v3, :cond_5

    move v5, v1

    move v2, v4

    move v3, v2

    goto :goto_3

    :cond_5
    const v2, 0x7f080405

    const v3, 0x7f110033

    move v5, v1

    goto :goto_3

    :cond_6
    move v2, v4

    move v3, v2

    move v5, v3

    :goto_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_7

    move v1, v4

    :cond_7
    if-lez v2, :cond_8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    if-lez v3, :cond_9

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    if-eqz v5, :cond_a

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    :goto_4
    if-nez v1, :cond_b

    return-void

    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p3, p2, v5, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->applyAnimType(Ljava/util/List;IZLandroid/view/View;)V

    return-void
.end method

.method private updateTipImage(IILjava/util/List;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isPanelVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    :goto_0
    if-nez v1, :cond_3

    return-void

    :cond_3
    const/16 v2, 0xa5

    const/16 v3, 0x25

    const/16 v4, 0x22

    const/4 v5, 0x1

    const/16 v6, 0xb8

    const/4 v7, -0x1

    const/4 v8, 0x3

    if-eq p1, v2, :cond_11

    const/16 v2, 0xa9

    const/16 v9, 0xc2

    if-eq p1, v2, :cond_e

    const/16 v2, 0xab

    if-eq p1, v2, :cond_c

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_b

    const/16 v0, 0xb2

    if-eq p1, v0, :cond_11

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_12

    const/16 v0, 0xad

    if-eq p1, v0, :cond_9

    const/16 v0, 0xae

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_5

    if-eq p1, v6, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_3

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateCenterTipImage(IILjava/util/List;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreviewPlay()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v4

    goto/16 :goto_4

    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMiLiveSegmentData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_6
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isFoldingPhone()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1

    :cond_7
    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_8
    :goto_1
    move v0, v8

    goto/16 :goto_4

    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_a
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportSuperNightVideo()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1

    :cond_c
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getPortraitLightingVersion()I

    move-result v0

    if-ne v0, v5, :cond_d

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1

    :cond_e
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto :goto_2

    :cond_f
    move v0, v7

    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v10, 0x3a6

    invoke-virtual {v2, v10}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v9

    check-cast v9, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v9, :cond_10

    invoke-interface {v9}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v9

    if-nez v9, :cond_16

    :cond_10
    if-eqz v2, :cond_17

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_3

    :cond_11
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3

    :cond_13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstController;->isPendingStopTimerBurst()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_3

    :cond_14
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_3

    :cond_15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportPopShineEntry()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_1

    :cond_16
    :goto_3
    move v0, v7

    :cond_17
    :goto_4
    const/4 v2, 0x0

    if-eq v0, v7, :cond_20

    if-eq v0, v4, :cond_1e

    if-eq v0, v3, :cond_1d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1c

    if-eq v0, v8, :cond_1b

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1a

    const/4 v3, 0x5

    if-eq v0, v3, :cond_19

    const/4 v3, 0x6

    if-eq v0, v3, :cond_18

    move v3, v2

    move v4, v3

    goto/16 :goto_7

    :cond_18
    const v3, 0x7f080422

    const v4, 0x7f110838

    goto :goto_5

    :cond_19
    const v3, 0x7f0801ee

    const v4, 0x7f110105

    goto :goto_5

    :cond_1a
    const v3, 0x7f08055f

    const v4, 0x7f11010d

    :goto_5
    move v11, v3

    move v3, v2

    move v2, v11

    goto :goto_7

    :cond_1b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getBottomEntryRes(I)I

    move-result v2

    const v3, 0x7f110026

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result v4

    move v11, v4

    move v4, v3

    :goto_6
    move v3, v11

    goto :goto_7

    :cond_1c
    const v3, 0x7f080203

    move v4, v2

    move v2, v3

    move v3, v4

    goto :goto_7

    :cond_1d
    const v3, 0x7f0803f2

    const v4, 0x7f1100a1

    goto :goto_5

    :cond_1e
    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v3, v6, :cond_1f

    const v3, 0x7f080416

    const v4, 0x7f110033

    goto :goto_5

    :cond_1f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getBottomEntryRes(I)I

    move-result v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result v4

    move v11, v4

    move v4, v2

    move v2, v3

    goto :goto_6

    :cond_20
    move v3, v2

    move v4, v3

    move v5, v4

    :goto_7
    if-lez v2, :cond_21

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_21
    if-lez v4, :cond_22

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_22
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_24

    check-cast v2, Lcom/android/camera/ui/ColorImageView;

    if-eqz v3, :cond_23

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v3

    goto :goto_8

    :cond_23
    const v3, -0x141415

    :goto_8
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateImageBgColor(ILandroid/view/View;)V

    :cond_24
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_25

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_25

    return-void

    :cond_25
    if-eqz v5, :cond_26

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float p1, p1

    invoke-static {v1, p1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    :cond_26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_27

    invoke-direct {p0, p3, p2, v5, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->applyAnimType(Ljava/util/List;IZLandroid/view/View;)V

    goto :goto_9

    :cond_27
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    if-ne v1, p0, :cond_29

    if-eqz v5, :cond_28

    new-instance p0, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$erEko70dWT5COyRbO1iZv04bjas;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$erEko70dWT5COyRbO1iZv04bjas;-><init>(Landroid/widget/ImageView;)V

    const-wide/16 p1, 0x5

    invoke-virtual {v1, p0, p1, p2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    :cond_28
    invoke-static {v1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_29
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public containTips(I)Z
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public directHideCenterTipImage()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    return-void
.end method

.method public directHideLeftImageIntro()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntro:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntro:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public directHideLyingDirectHint()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public directHideTipImage()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public directShowLeftImageIntro()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowUltraWideIntro()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage(IIILjava/util/List;)V

    return-void
.end method

.method public directShowOrHideLeftTipImage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public directlyHideTips()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showOrHideChip(Z)V

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isPortraitHintVisible()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(ILjava/lang/String;I)V

    :cond_2
    iput v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    return-void
.end method

.method public directlyHideTips(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->containTips(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directlyHideTips()V

    :cond_1
    return-void
.end method

.method public directlyHideTipsForce()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    return-void
.end method

.method public directlyShowTips(II)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:Ljava/lang/String;

    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public getBottomMargin()I
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportIDCardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070605

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070604

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getCurrentBottomTipMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentBottomTipType()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff9

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0054

    return p0
.end method

.method public hideAiTips()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->deactivateTip()V

    return-void
.end method

.method public hideCenterTipImage()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterRedDot:Landroid/view/View;

    if-eqz p0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public hideLeftTipImage()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public hideNearRangeTip()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNearRangeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNearRangeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideNightSeTip()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/CapsuleLayout;->hide()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public hideQrCodeTip()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isQRTipVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0xa3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xa5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage()V

    :cond_1
    return-void
.end method

.method public hideRightTipImage()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public hideTipImage()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0303

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const v0, 0x7f0a02fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800053

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    const v2, 0x7f080369

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    const v2, 0x7f080415

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0302

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0301

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0309

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CapsuleLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    const v0, 0x7f0a0308

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0307

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipContent:Landroid/widget/TextView;

    const v2, 0x7f0a0306

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    const v0, 0x7f0a02f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    sget-boolean v3, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v3, :cond_0

    const/16 v1, 0x51

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    const v1, 0x7f0a02f7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a02f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterRedDot:Landroid/view/View;

    const v0, 0x7f0a02fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntro:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroRadius:I

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getLeftImageIntroWide()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftImageIntroWidth:I

    const v0, 0x7f0a0305

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNearRangeModeButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    const v0, 0x7f0a0304

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    const v0, 0x7f0a030a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNearRangeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->adjustViewBackground(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNearRangeModeButton:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->provideAnimateElement(ILjava/util/List;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/CameraIntentManager;->isFromScreenSlide()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/Util;->startScreenSlideAlphaInAnimation(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070619

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBottomTipHeight:I

    return-void
.end method

.method public isAiTipShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNearRangeTipShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNearRangeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNightSeTipShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPortraitHintVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQRTipVisible()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isTipShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$showQrCodeTip$1$FragmentBottomPopupTips()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->lambda$showQrCodeTip$1()V

    return-void
.end method

.method public synthetic lambda$showTips$0$FragmentBottomPopupTips()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->lambda$showTips$0()V

    return-void
.end method

.method public synthetic lambda$updateExtraTipForZoom$3$FragmentBottomPopupTips(Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->lambda$updateExtraTipForZoom$3(Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;Landroid/view/View;)V

    return-void
.end method

.method public needViewClear()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->needViewClear()Z

    move-result p0

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigBottomTipOfMimoji()V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0xd1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->adjustViewBackground(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directlyHideTips()V

    :goto_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage(IILjava/util/List;)V

    const/4 p1, 0x1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage(IIILjava/util/List;)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipExtraImage(IILjava/util/List;)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateCenterTipImage(IILjava/util/List;)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 3

    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNearRangeModeButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    :cond_2
    return v2

    :cond_3
    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    if-ne p0, v1, :cond_4

    :cond_4
    :goto_1
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "attr_click_beauty_show_bottom_button"

    const/4 v3, 0x3

    const/16 v4, 0x22

    const/4 v5, 0x0

    const/16 v6, 0xa4

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_13

    sget-object p1, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string v0, "Stop super night checker"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xba

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_4

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->clickPopupTip(Landroid/view/View;)V

    goto/16 :goto_4

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    const-string v10, "onClick popup_right_tip_image: type=0x%x"

    invoke-static {v6, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v6, 0xb3

    invoke-virtual {v4, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-eq v1, v3, :cond_9

    const/16 v2, 0x24

    if-eq v1, v2, :cond_3

    goto/16 :goto_4

    :cond_3
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb7

    if-ne p0, v1, :cond_6

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, "mi_live_switch_camera"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    if-eqz v4, :cond_13

    new-array p0, v7, [Landroid/view/View;

    aput-object p1, p0, v8

    invoke-interface {v4, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->changeCamera([Landroid/view/View;)V

    goto/16 :goto_4

    :cond_5
    :goto_0
    return-void

    :cond_6
    const/16 v1, 0xad

    if-ne p0, v1, :cond_13

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_13

    new-array p0, v7, [Landroid/view/View;

    aput-object p1, p0, v8

    invoke-interface {v4, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->changeCamera([Landroid/view/View;)V

    goto/16 :goto_4

    :cond_8
    :goto_1
    return-void

    :cond_9
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showBeauty(I)V

    goto/16 :goto_4

    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const-string v7, "onClick popup_right_tip_extra_image: type=0x%x"

    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v3, :cond_b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    goto/16 :goto_4

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->clickPopupTip(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_b
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showBeauty(I)V

    goto/16 :goto_4

    :sswitch_4
    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->setPopupUltraWideIntroClicked()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLeftImageIntro()V

    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->onLeftImageClick(Landroid/view/View;)V

    goto/16 :goto_4

    :sswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    const-string v5, "onClick popup_left_tip_extra_image: type=0x%x"

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_d

    if-eq v0, v4, :cond_c

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v0, :cond_e

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    goto :goto_2

    :cond_d
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showKaleidoscope()V

    :cond_e
    :goto_2
    :sswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "onClick popup_center_tip_image: type=0x%x"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12

    if-eq p1, v0, :cond_11

    if-eq p1, v4, :cond_f

    goto :goto_3

    :cond_f
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_12

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb8

    if-ne p0, v0, :cond_10

    invoke-interface {p1, v7}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    goto :goto_3

    :cond_10
    invoke-interface {p1, v8}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    goto :goto_3

    :cond_11
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showLiveSticker()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterRedDot:Landroid/view/View;

    if-eqz p0, :cond_12

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->setTTLiveStickerNeedRedDot(Z)V

    :cond_12
    :goto_3
    :sswitch_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_13

    sget-object p1, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string v0, "NearRangeMode:Exit near range mode"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xa7

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    :cond_13
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a02f7 -> :sswitch_7
        0x7f0a02fa -> :sswitch_6
        0x7f0a02fb -> :sswitch_5
        0x7f0a02fc -> :sswitch_4
        0x7f0a0301 -> :sswitch_3
        0x7f0a0302 -> :sswitch_2
        0x7f0a0303 -> :sswitch_1
        0x7f0a0305 -> :sswitch_8
        0x7f0a0308 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget-object p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string p1, "onCreate: "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCountDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xd1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p3, v0, :cond_1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v2, p1, :cond_2

    :cond_1
    iput v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCloseType:I

    :cond_2
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->configRootLayoutWidth(I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isInModeChanging()Z

    move-result v3

    if-nez v3, :cond_3

    if-ne p3, v0, :cond_4

    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLyingDirectHint:Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    :cond_4
    iget p3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p3}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    :cond_5
    if-eq v2, p1, :cond_7

    invoke-direct {p0, v2, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isCaptureModeExceptRatio(II)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_0

    :cond_6
    const/4 p3, 0x4

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p3, 0x5

    :goto_1
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->onBackEvent(I)Z

    invoke-virtual {p0, v1, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipBottomMargin(IZ)V

    invoke-direct {p0, p1, v2, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage(IILjava/util/List;)V

    invoke-direct {p0, v1, p1, v2, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage(IIILjava/util/List;)V

    invoke-direct {p0, p1, v2, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipExtraImage(IILjava/util/List;)V

    invoke-direct {p0, p1, v2, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateRightTipImage(IILjava/util/List;)V

    invoke-direct {p0, p1, v2, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateRightExtraTipImage(IILjava/util/List;)V

    invoke-direct {p0, p1, v2, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateCenterTipImage(IILjava/util/List;)V

    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 1

    const/16 v0, 0xf0

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getFragmentInto()I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/16 v0, 0xa1

    aput v0, p0, p1

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideOrientationChanged(ILjava/util/List;I)V

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->configRootLayoutWidth(I)V

    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateImageBgColor(ILandroid/view/View;)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateImageBgColor(ILandroid/view/View;)V

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

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x18

    if-eq p2, v0, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipImage:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCenterTipImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLeftTipExtraImage:Landroid/widget/ImageView;

    if-eqz p0, :cond_5

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public reConfigAiTip()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    instance-of v1, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getCurrentAiScene()I

    move-result v0

    sget-object v1, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreAiState: maybe restore ai scene tip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/camera/constant/AiSceneModeConstant;->isPopTipRequired(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipState(I)V

    :cond_0
    return-void
.end method

.method public reConfigBottomTipOfUltraWide()V
    .locals 4

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    const/16 v1, 0xa5

    const/16 v2, 0xa3

    const/16 v3, 0xa2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v2, v0, :cond_1

    if-eq v1, v0, :cond_1

    if-eq v3, v0, :cond_1

    const/16 v1, 0xa9

    if-eq v1, v0, :cond_1

    const/16 v1, 0xae

    if-eq v1, v0, :cond_1

    const/16 v1, 0xa1

    if-eq v1, v0, :cond_1

    const/16 v1, 0xb7

    if-eq v1, v0, :cond_1

    const/16 v1, 0xd7

    if-eq v1, v0, :cond_1

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v2, v0, :cond_1

    if-eq v1, v0, :cond_1

    if-eq v3, v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    return-void

    :cond_5
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->shouldShowUltraWideStickyTip(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isTipShowing()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0xd

    const v1, 0x7f1108fb

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directlyShowTips(II)V

    :cond_8
    return-void
.end method

.method public reConfigQrCodeTip()Z
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0xa3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xa5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isTipShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    const v1, 0x7f1108fd

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    const v1, 0x7f1108fe

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v1

    invoke-static {v1}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result v1

    sget v4, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xb4

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->isSeekBarVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xc2

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_4

    :cond_5
    move v5, v2

    :goto_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0xac

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getCurrentAiSceneLevel()I

    move-result v7

    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getAlertIsShow()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, -0x1

    if-eq v7, v6, :cond_6

    const/16 v6, 0x17

    if-eq v7, v6, :cond_6

    const/16 v6, 0x18

    if-eq v7, v6, :cond_6

    const/16 v6, 0x23

    if-eq v7, v6, :cond_6

    const/16 v6, -0x23

    if-ne v7, v6, :cond_7

    :cond_6
    move v6, v3

    goto :goto_5

    :cond_7
    move v6, v2

    :goto_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v7

    if-nez v7, :cond_8

    if-nez v1, :cond_8

    if-nez v5, :cond_8

    if-nez v4, :cond_8

    if-nez v0, :cond_8

    if-eqz v6, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    return v3

    :cond_9
    return v2
.end method

.method public reInitTipImage()V
    .locals 3

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xaf

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const-string v0, "pref_camera_first_ultra_wide_use_hint_shown_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowUltraWideIntro()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    :cond_0
    return-void
.end method

.method public setPortraitHintVisible(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directlyHideTips()V

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBottomTipHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;I)V

    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showFastMotionPanel()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotion()Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FastMotionProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xc5

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->setClosed(Z)V

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onSwitchFastMotionAction(Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$FastMotionProtocol;->show()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_2

    const/16 v0, 0x22

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->setClosed(Z)V

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$FastMotionProtocol;->dismiss(II)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public showFastMotionProPanel()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionPro()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FastmotionProAdjust;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xc5

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->setClosed(Z)V

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onSwitchFastMotionProAction(Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$FastmotionProAdjust;->show()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_2

    const/16 v0, 0x24

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->setClosed(Z)V

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$FastmotionProAdjust;->dismiss(II)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public showNearRangeTip()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNearRangeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNearRangeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNearRangeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getTipBottomMargin(I)I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xa5

    if-ne v2, v3, :cond_1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNearRangeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNearRangeModeButton:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public showNightSeTip(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCountDownTimer:Landroid/os/CountDownTimer;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    new-instance v2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    if-eq p1, v0, :cond_4

    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipContent:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f110113

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "S"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public showOrHideVideoBeautyPanel()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideAllTipImage()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xc2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->show()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->expandShineBottomMenu(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    return-void
.end method

.method public showQrCodeTip()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigQrCodeTip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$YMBYZMvmfpcFh5rhQ6lYxMz4PCM;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$YMBYZMvmfpcFh5rhQ6lYxMz4PCM;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPopupTipLabel:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage()V

    return-void
.end method

.method public showTips(III)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(ILjava/lang/String;I)V

    return-void
.end method

.method public showTips(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/fragment/FragmentBottomPopupTips$3;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;III)V

    int-to-long p0, p4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showTips(ILjava/lang/String;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isNearRangeTipShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "current fragment is not resumed"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v0, 0xab

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ne p1, v1, :cond_3

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v3, v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v3

    if-ne v3, v2, :cond_3

    return-void

    :cond_3
    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v3, v0, :cond_4

    const/16 v0, 0xa9

    if-eq v3, v0, :cond_4

    const/16 v0, 0xa2

    if-eq v3, v0, :cond_4

    const/16 v0, 0xb4

    if-eq v3, v0, :cond_4

    const/16 v0, 0xd6

    if-ne v3, v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    const/16 v3, 0x15

    if-ne v0, v3, :cond_5

    return-void

    :cond_5
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBogusCameraId()I

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isPortraitSuccessHintVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    :cond_7
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:Ljava/lang/String;

    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directHideLyingDirectHint()V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBottomTipHeight:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    new-instance p2, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$mkYxefwYonsCVpV3iB2uVp-4FbE;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$mkYxefwYonsCVpV3iB2uVp-4FbE;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p1, p2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    const/4 p1, 0x0

    if-eq p3, v2, :cond_e

    const/4 p2, 0x2

    if-eq p3, p2, :cond_d

    const/4 p2, 0x3

    if-eq p3, p2, :cond_c

    const/4 p2, 0x5

    if-eq p3, p2, :cond_b

    if-eq p3, v1, :cond_a

    const/4 p2, 0x7

    if-eq p3, p2, :cond_9

    move p2, p1

    goto :goto_0

    :cond_9
    const/16 p2, 0x1770

    goto :goto_0

    :cond_a
    const/16 p2, 0xbb8

    goto :goto_0

    :cond_b
    const/16 p2, 0x7d0

    goto :goto_0

    :cond_c
    const/16 p2, 0x3a98

    goto :goto_0

    :cond_d
    const/16 p2, 0x1388

    goto :goto_0

    :cond_e
    const/16 p2, 0x3e8

    :goto_0
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-lez p2, :cond_f

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    int-to-long v0, p2

    invoke-virtual {p3, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_f
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p2, 0xa3

    if-ne p0, p2, :cond_10

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p2, 0xc3

    invoke-virtual {p0, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    if-eqz p0, :cond_10

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showOrHideChip(Z)V

    :cond_10
    return-void
.end method

.method public showTipsWithOrientation(IIIII)V
    .locals 1

    if-eqz p5, :cond_2

    const/4 v0, 0x1

    if-eq p5, v0, :cond_1

    const/4 v0, 0x2

    if-eq p5, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result p5

    if-nez p5, :cond_3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected startFromKeyGuard()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "StartActivityWhenLocked"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public startNightCountDown(I)V
    .locals 8

    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$6;

    int-to-long v4, p1

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/fragment/FragmentBottomPopupTips$6;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;JJ)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iput v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightCaptureExpTime:I

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipCancelButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mNightSeTipLayout:Lcom/android/camera/ui/CapsuleLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mImageTipHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0xaf

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLeftImageIntro:Z

    return-void
.end method

.method public updateExtraTipForZoom(Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;Z)V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa5

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;->getRightmostChild()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$Azt0EGgO_G3CDrXWjanRDpv68J4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/fragment/-$$Lambda$FragmentBottomPopupTips$Azt0EGgO_G3CDrXWjanRDpv68J4;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Lcom/android/camera/ui/zoom/ZoomIndexButtonsLayout;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRightTipExtraImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateLeftTipImage()V
    .locals 3

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage(IIILjava/util/List;)V

    return-void
.end method

.method public updateLyingDirectHint(ZZ)V
    .locals 6

    if-nez p2, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLyingDirectHint:Z

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mIsShowLyingDirectHint:Z

    const/16 p2, 0x8

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xb6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomPanelVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xb4

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->isSeekBarVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xc2

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isNearRangeTipShowing()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isTipShowing()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez p1, :cond_4

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setRotation(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    iget p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mBottomTipHeight:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackLyingDirectShow(I)V

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLyingDirectHint:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public updateMimojiBottomTipImage()V
    .locals 3

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipImage(IIILjava/util/List;)V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0, v0, v0, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateLeftTipExtraImage(IILjava/util/List;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage()V

    return-void
.end method

.method public updateRightExtraTipImage()V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateRightExtraTipImage(IILjava/util/List;)V

    return-void
.end method

.method public updateTipBottomMargin(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v2, p1

    const v3, 0x3f99999a

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-eqz p2, :cond_2

    int-to-float p2, p1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    new-instance p2, Lcom/android/camera/animation/folme/FolmeTranslateYOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    neg-int p1, p1

    invoke-direct {p2, p0, p1}, Lcom/android/camera/animation/folme/FolmeTranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/android/camera/animation/folme/FolmeTranslateYOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    neg-int p1, p1

    invoke-direct {p2, p0, p1}, Lcom/android/camera/animation/folme/FolmeTranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {p2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    neg-int p1, p1

    invoke-static {p0, p1}, Lcom/android/camera/animation/folme/FolmeTranslateYOnSubscribe;->directSetResult(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public updateTipImage()V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage(IILjava/util/List;)V

    return-void
.end method

.method public updateTipState(I)V
    .locals 3

    invoke-static {p1}, Lcom/android/camera/constant/AiSceneModeConstant;->isPopTipRequired(I)Z

    move-result v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xc2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->deactivateTip()V

    return-void

    :cond_1
    if-eqz v0, :cond_5

    const/16 v0, 0x26

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showIDCardTip(Z)V

    goto :goto_0

    :cond_2
    if-eq p1, v1, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showAIDocTip(Z)V

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->activeTip()V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipState:Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$TipState;->deactivatingTip()V

    :goto_1
    return-void
.end method
