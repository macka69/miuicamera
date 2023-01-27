.class public Lcom/android/camera/fragment/top/FragmentTopConfig;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentTopConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/top/TopExpandAdapter$ExpandListener;
.implements Lcom/android/camera/protocol/ModeProtocol$TopAlert;
.implements Lcom/android/camera/protocol/ModeProtocol$SnapShotIndicator;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBeautyRecording;
.implements Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EXPAND_STATE_CENTER:I = 0x2

.field private static final EXPAND_STATE_LEFT:I = 0x0

.field private static final EXPAND_STATE_LEFT_FROM_SIBLING:I = 0x1

.field private static final EXPAND_STATE_RIGHT:I = 0x4

.field private static final EXPAND_STATE_RIGHT_FROM_SIBLING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentTopConfig"

.field public static final TIP_HINT_DURATION_1S:I = 0x3e8

.field public static final TIP_HINT_DURATION_2S:I = 0x7d0

.field public static final TIP_HINT_DURATION_3S:I = 0xbb8


# instance fields
.field private mAiSceneResources:[I

.field private mAiUltraPixelPhotographyDrawables:[I

.field private mAiUltraPixelPhotographyTips:[Ljava/lang/String;

.field private mAutoZoomResources:[I

.field private mCaptureDelayNumber:Landroid/widget/TextView;

.field private mCaptureNumberAutoHibernationOffset:Z

.field private mCinematicRatioResources:[I

.field private mConfigViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAiSceneLevel:I

.field private mCustomSeekBarCount:Lcom/android/camera/timerburst/TimerBurstSeekBar;

.field private mCustomSeekBarInterval:Lcom/android/camera/timerburst/TimerBurstSeekBar;

.field private mDefaultMenuLandHeight:I

.field private mDeferAnimVerticalOffset:Z

.field private mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

.field private mDisplayRectTopMargin:I

.field private mDocumentResources:[I

.field private mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

.field private mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

.field private mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

.field private mGifResource:I

.field private mImageViewBack:Landroid/widget/ImageView;

.field private mIsRTL:Z

.field private mIsShowExtraMenu:Z

.field private mIsShowExtraReferenceLineMenu:Z

.field private mIsShowExtraTimerMenu:Z

.field private mIsShowTopLyingDirectHint:Z

.field private mIsVideoCastIntent:Z

.field private mLayoutCount:Landroid/view/View;

.field private mLayoutInterval:Landroid/view/View;

.field private mLightingResource:[I

.field private mLiveShotAnimator:Landroid/animation/ObjectAnimator;

.field private mLiveShotResource:[I

.field private mLlTimerMenu:Landroid/widget/LinearLayout;

.field private mManualPictureStyleResources:[I

.field private mMoreResources:[I

.field private mMultiSnapNum:Landroid/widget/TextView;

.field private mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

.field private mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mReferencelineBack:Landroid/widget/ImageView;

.field private mReferencelineMenu:Landroid/widget/LinearLayout;

.field private mSnapStyle:Landroid/text/style/TextAppearanceSpan;

.field private mSpacesItemWidth:I

.field private mStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mSuperEISResources:[I

.field private mSuperMacroResources:[I

.field private mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

.field private mTipsState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTopBackgroundHeight:I

.field private mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

.field private mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

.field private mTopConfigMenu:Landroid/view/View;

.field private mTopConfigMenuHeight:I

.field private mTopConfigTotalWidth:I

.field private mTopConfigViewGroup:Landroid/view/ViewGroup;

.field private mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

.field private mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

.field private mTopExtraMenuHeight:I

.field private mTopReferenceToolHight:I

.field private mTopTimerBurstToolHight:I

.field private mTvShotInterval:Landroid/widget/TextView;

.field private mUltraPixelPhotographyIconResources:[I

.field private mUltraPixelPhotographyTipString:[Ljava/lang/String;

.field private mUltraPixelPortraitResources:[I

.field private mUltraWideBokehResources:[I

.field private mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

.field private mVideo8KResource:[I

.field private mVideoBokehResource:[I

.field private mZoomInAnimator:Landroid/animation/AnimatorSet;

.field private mZoomOutAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/fragment/top/FragmentTopConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureNumberAutoHibernationOffset:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTipsState:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/fragment/top/ExtraAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/fragment/top/ExtraAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/top/FragmentTopConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->directHiddenExtraMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/ui/ShapeBackGroundView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/top/FragmentTopConfig;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/top/FragmentTopConfig;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenuHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/top/FragmentTopConfig;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/top/FragmentTopConfig;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundHeight:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/top/FragmentTopConfig;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private alertHDR(IZZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShowMoonSelector()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    if-eqz p4, :cond_3

    if-nez p1, :cond_2

    if-eqz p3, :cond_3

    const/16 p2, 0xc2

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reverseExpandTopBar(Z)Z

    :cond_3
    :goto_0
    const p2, 0x7f1103ce

    const-string p3, "hdr"

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSwitchTip(Ljava/lang/String;II)V

    return-void
.end method

.method private alertTopMusicHint(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMusicTip(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private animatorExtraMenuBackground(IZZ)V
    .locals 12

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getBlackOriginHeight()I

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const/16 v1, 0x99

    if-nez p2, :cond_2

    if-nez p3, :cond_3

    :cond_2
    move v5, v1

    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v1

    move v5, v4

    :goto_0
    new-instance v11, Lcom/android/camera/fragment/top/FragmentTopConfig$3;

    invoke-direct {v11, p0, p3, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig$3;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;ZI)V

    const/4 p2, 0x0

    const-wide/16 v6, 0xc8

    if-eqz p3, :cond_5

    const/4 p3, -0x1

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, p3, v2, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    sub-int v3, v1, p1

    int-to-float v3, v3

    invoke-static {p3, v3}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-static {p3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    new-instance v3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p3, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    invoke-virtual {p2, v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, p1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v3}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentRadius()I

    move-result v8

    const/16 v9, 0x42

    const/16 v10, 0xc8

    move v6, v1

    move v7, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/camera/ui/ShapeBackGroundView;->startBackGroundAnimator(IIIIIIILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_6

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/camera/fragment/top/FragmentTopConfig$4;

    invoke-direct {p2, p0, v0, v4, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig$4;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;III)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_6
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraMenuHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private checkFeatureState()V
    .locals 3

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMFeature;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mVMFeature:Lcom/android/camera/data/observeable/VMFeature;

    new-instance v1, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$BzO1qb5Fl48LxzBXlTEOZirc7OY;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$BzO1qb5Fl48LxzBXlTEOZirc7OY;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/observeable/VMFeature;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    :cond_0
    return-void
.end method

.method private configBottomPopupTips(Z)V
    .locals 2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportIDCardMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDocumentMode2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDocumentMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentAiSceneLevel:I

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipState(I)V

    return-void
.end method

.method private configTopCoverBackground(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getTopMaskTargetHeight()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->setBlackOriginHeight(I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    const/16 v2, 0x99

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ShapeBackGroundView;->setBackgroundAlpha(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->setCurrentRadius(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->setBackgroundAlpha(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_a

    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v0

    const/4 v2, 0x1

    if-le p1, v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    if-nez v0, :cond_8

    const/16 v0, 0xfe

    if-ne p3, v0, :cond_6

    goto :goto_4

    :cond_6
    if-nez p2, :cond_a

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    goto :goto_5

    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    if-eqz p2, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    :cond_a
    :goto_5
    return-void
.end method

.method private configTopCoverVerticalOffset(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Ljava/util/List;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isScreenLandScape()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getLeftMaskWidth()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getTopMaskTargetHeight()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentTopVerticalOffset()I

    move-result v3

    if-ne p1, v3, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    if-ge p1, v3, :cond_3

    if-eqz p4, :cond_3

    const/4 p4, 0x1

    goto :goto_1

    :cond_3
    move p4, v0

    :goto_1
    if-eqz p4, :cond_4

    return-void

    :cond_4
    sub-int p4, p1, v3

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-le p1, v3, :cond_5

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v2, p4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_5
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v2, p4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentHeight()I

    move-result v5

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->setAnimateHeight(I)V

    if-eqz p3, :cond_7

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p3}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lcom/android/camera/fragment/top/FragmentTopConfig$5;

    move-object v1, p3

    move-object v2, p0

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig$5;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;IIII)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_6

    new-instance p3, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;

    invoke-direct {p3, p1}, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;-><init>(Landroid/animation/Animator;)V

    invoke-static {p3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_7
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->setTopVerticalOffset(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    add-int/2addr v5, p4

    invoke-virtual {p1, v5}, Lcom/android/camera/ui/ShapeBackGroundView;->setCurrentHeight(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    add-int/2addr v6, p4

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, p2, v6, p3, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_8
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_9
    :goto_2
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a0266

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_a
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private directHiddenExtraMenu()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenuHeight:I

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->getBlackOriginHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->setCurrentHeight(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->setCurrentRadius(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->setBackgroundAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    iput-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    return-void
.end method

.method private enableAllDisabledMenuItem()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_3
    :goto_1
    return-void
.end method

.method private expandExtraView(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->hideRecordingTime()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reverseExpandTopBar(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-direct {v0, p1, p0}, Lcom/android/camera/fragment/top/TopExpandAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;Lcom/android/camera/fragment/top/TopExpandAdapter$ExpandListener;)V

    iget-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/TopExpandAdapter;->setAnchorViewX(I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isBothLandscapeMode()Z

    move-result p1

    const/16 v1, 0x5a

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/16 v3, 0xb4

    if-ge v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x10e

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/top/TopExpendView;->setRotation(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandscapeMode()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/top/TopExpendView;->setRotation(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/top/TopExpendView;->setRotation(I)V

    :goto_2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/top/TopExpendView;->setAdapter(Lcom/android/camera/fragment/top/TopExpandAdapter;)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    new-instance v0, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$QBVRVWx-5HcU6PA7d5_kuyxs1xI;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$QBVRVWx-5HcU6PA7d5_kuyxs1xI;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    iput-object v0, p1, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mTopExpendView:Lcom/android/camera/fragment/top/TopExpendView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mReverseLeft:I

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-virtual {p1, p3, v0}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->hideOtherViews(ILjava/util/List;)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    iput-object p2, p1, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->mAnchorView:Landroid/view/View;

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSpacesItemWidth:I

    iput p0, p1, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->spacesItemWidth:I

    invoke-virtual {p1}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->showExpendView()V

    return-void
.end method

.method private getAiSceneDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private getAiSceneResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f08033e
        0x7f08033f
    .end array-data
.end method

.method private getAiSceneShadowDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private getAiUltraPixelPhotographyDrawables()[I
    .locals 2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/device/Common;->getAiSrSizeIndex()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    new-array p0, v0, [I

    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    new-array p0, v0, [I

    fill-array-data p0, :array_1

    return-object p0

    :array_0
    .array-data 4
        0x7f0803bf
        0x7f0803c0
    .end array-data

    :array_1
    .array-data 4
        0x7f0803bd
        0x7f0803be
    .end array-data
.end method

.method private getAiUltraPixelPhotographyTips()[Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->getAiSrSizeIndex()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const v1, 0x7f1100c7

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f1108ea

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {p0, v1, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f1100c8

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v1, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    return-object v0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const v1, 0x7f1108e7

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f1108e9

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {p0, v1, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f1108e8

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v1, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    return-object v0
.end method

.method private getAutoZoomResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f0801fa
        0x7f0801fb
    .end array-data
.end method

.method private getCinematicRatioResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080214
        0x7f080216
    .end array-data
.end method

.method private getDocumentResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080173
        0x7f080174
    .end array-data
.end method

.method private getExposureFeedbackResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f08024a
        0x7f08024b
    .end array-data
.end method

.method private getGifRecource()I
    .locals 0

    const p0, 0x7f08041a

    return p0
.end method

.method private getInitialMargin(Lcom/android/camera/data/data/config/TopConfigItem;Landroid/widget/ImageView;I)I
    .locals 8

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfigsSize()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_1

    return v1

    :cond_1
    iget v2, p1, Lcom/android/camera/data/data/config/TopConfigItem;->index:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v4, 0x800005

    const/4 v5, 0x1

    if-eq v0, v5, :cond_9

    const/4 v6, 0x2

    const v7, 0x800003

    if-eq v0, v6, :cond_4

    if-nez v2, :cond_2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :cond_2
    sub-int/2addr v0, v5

    if-ne v2, v0, :cond_3

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :cond_3
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigTotalWidth:I

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {p2}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfigsSize()I

    move-result p2

    mul-int/2addr p2, p3

    sub-int/2addr p1, p2

    div-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSpacesItemWidth:I

    mul-int/2addr p1, v2

    mul-int/2addr v2, p3

    add-int/2addr p1, v2

    return p1

    :cond_4
    if-nez v2, :cond_6

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p1, p1, Lcom/android/camera/data/data/config/TopConfigItem;->gravity:I

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v7, p1

    :goto_1
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    :cond_6
    if-ne v2, v5, :cond_8

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p1, p1, Lcom/android/camera/data/data/config/TopConfigItem;->gravity:I

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move v4, p1

    :goto_2
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_8
    :goto_3
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigTotalWidth:I

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfigsSize()I

    move-result v2

    mul-int/2addr v2, p3

    sub-int/2addr p1, v2

    sub-int/2addr v0, v5

    div-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSpacesItemWidth:I

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :cond_9
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p0, p1, Lcom/android/camera/data/data/config/TopConfigItem;->gravity:I

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    move v4, p0

    :goto_4
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v1
.end method

.method private getLightingResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f08036c
        0x7f08036d
    .end array-data
.end method

.method private getLiveShotResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080338
        0x7f08033d
    .end array-data
.end method

.method private getManualPictureStyleResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f08025c
        0x7f08025d
    .end array-data
.end method

.method private getMenuViewBackgroundHeight(Landroid/view/View;)I
    .locals 8

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    const v2, 0x7f0a0266

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    const v2, 0x7f0a0264

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    const/16 v3, 0xb4

    const/4 v4, 0x0

    if-ne v1, v2, :cond_6

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz v1, :cond_3

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    div-int/lit8 v1, v0, 0x2

    :goto_1
    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    :cond_5
    :goto_2
    return v0

    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0706d1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v7, v7

    invoke-static {p1, v7}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz v7, :cond_b

    const/16 v4, 0x5a

    if-eq v7, v4, :cond_a

    if-eq v7, v3, :cond_8

    const/16 v4, 0x10e

    if-eq v7, v4, :cond_7

    goto :goto_5

    :cond_7
    sub-int v4, v2, v5

    int-to-float v4, v4

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    add-int v4, v1, v5

    sub-int/2addr v4, v2

    int-to-float v4, v4

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_5

    :cond_8
    iget-boolean v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v4, :cond_9

    int-to-float v4, v1

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :goto_3
    add-int v4, v0, v5

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_5

    :cond_a
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v4

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    int-to-float v4, v4

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    sub-int v4, v5, v2

    int-to-float v4, v4

    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_5

    :cond_b
    iget-boolean v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v6

    sub-int/2addr v6, v1

    int-to-float v6, v6

    invoke-static {p1, v6}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    goto :goto_4

    :cond_c
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :goto_4
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :goto_5
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz p0, :cond_e

    if-ne p0, v3, :cond_d

    goto :goto_6

    :cond_d
    add-int/2addr v1, v5

    sub-int v0, v1, v2

    :cond_e
    :goto_6
    return v0
.end method

.method private getMoreResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f08036e
        0x7f08036f
    .end array-data
.end method

.method private getPortraitResources()I
    .locals 0

    const p0, 0x7f080370

    return p0
.end method

.method private getSettingResources()I
    .locals 0

    const p0, 0x7f080366

    return p0
.end method

.method private getSuperEISResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f08026d
        0x7f08026e
    .end array-data
.end method

.method private getSuperMacroResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080270
        0x7f080271
    .end array-data
.end method

.method private getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    const/4 v1, 0x0

    const-string v2, "FragmentTopConfig"

    if-nez v0, :cond_0

    const-string p0, "getTopAlert(): fragment is null"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "getTopAlert(): fragment is not added yet"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    return-object p0
.end method

.method private getUltraPixelPortraitResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080279
        0x7f080279
    .end array-data
.end method

.method private getUltraWideBokehResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f0803c4
        0x7f0803c6
    .end array-data
.end method

.method private getVideo8KRecource()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f08027b
        0x7f08027a
    .end array-data
.end method

.method private getVideoBokehResources()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080370
        0x7f080371
    .end array-data
.end method

.method private initExtraMenu(Z)V
    .locals 14

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isScreenLandScape()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->setTopVerticalOffset(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v3, p1, v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v5

    invoke-static {v4, p1, v3, v5}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getSupportedExtraConfigs(IILcom/android/camera2/CameraCapabilities;Z)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v8

    new-instance p1, Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v11, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    move-object v6, p1

    move-object v9, p0

    move-object v10, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/fragment/top/ExtraAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/config/SupportedConfigs;Landroid/view/View$OnClickListener;Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;I)V

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount(I)I

    move-result p1

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v6, v5}, Lcom/android/camera/fragment/top/ExtraAdapter;->getTotalRow(I)I

    move-result v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0706d1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0706cb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/2addr v9, p1

    add-int/2addr v7, v9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0706d5

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v7, v9

    iput v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v7

    invoke-virtual {v7, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v7, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b0007

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0b0023

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    new-instance v9, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v12, Lcom/android/camera/fragment/top/FragmentTopConfig$1;

    invoke-direct {v12, p0, v7}, Lcom/android/camera/fragment/top/FragmentTopConfig$1;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;I)V

    invoke-virtual {v9, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v12, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v9, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v9, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    iget v12, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    iget v13, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenuHeight:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v0

    invoke-virtual {v9, v12}, Lcom/android/camera/fragment/top/ExtraAdapter;->setAnimateHeight(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, v5

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 p1, 0x438

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_3
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-nez p1, :cond_4

    if-ge v4, v7, :cond_4

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    mul-int/2addr v0, v5

    sub-int/2addr p1, v0

    div-int/2addr p1, v7

    mul-int/2addr p1, v4

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    mul-int/2addr v0, v5

    add-int/2addr v0, p1

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    :cond_4
    add-int/2addr p1, v6

    if-ne p1, v7, :cond_5

    move v1, v3

    :cond_5
    const/4 p1, -0x1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a0264

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0266

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenuHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0a0265

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private initExtraTimerBurstMenu()V
    .locals 14

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0706cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0706d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopTimerBurstToolHight:I

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopTimerBurstToolHight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstInterval()I

    move-result v7

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xa7

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTvShotInterval:Landroid/widget/TextView;

    const v2, 0x7f1108d8

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTvShotInterval:Landroid/widget/TextView;

    const v2, 0x7f1108d9

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCustomSeekBarInterval:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    sget-object v2, Lcom/android/camera/timerburst/TimerBurstController;->timeInterval:[I

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v6

    const-string v5, "S"

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->initSeekBarConfig([IIILjava/lang/String;Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;)V

    div-int/lit8 v10, v0, 0xa

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCustomSeekBarCount:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    sget-object v9, Lcom/android/camera/timerburst/TimerBurstController;->shotCount:[I

    const/16 v11, 0xa

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v13

    const-string v12, ""

    invoke-virtual/range {v8 .. v13}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->initSeekBarConfig([IIILjava/lang/String;Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;)V

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLayoutCount:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f000a

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLayoutInterval:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f000b

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v7, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0264

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0266

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopTimerBurstToolHight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0265

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateTextViewTitle()V

    return-void
.end method

.method private initReferenceLineMenu()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getSupportedReferenceConfig(IILcom/android/camera2/CameraCapabilities;Z)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v9, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    move-object v4, v2

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/fragment/top/ExtraAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/config/SupportedConfigs;Landroid/view/View$OnClickListener;Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;I)V

    iput-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount(I)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Lcom/android/camera/fragment/top/FragmentTopConfig$2;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig$2;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07063d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070637

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v1, v5}, Lcom/android/camera/fragment/top/ExtraAdapter;->getTotalRow(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v1, v4}, Lcom/android/camera/fragment/top/ExtraAdapter;->getTotalRow(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopReferenceToolHight:I

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopReferenceToolHight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0264

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDefaultMenuLandHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0266

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopReferenceToolHight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0265

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private initSnapNumAnimator()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020003

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private initTopView()V
    .locals 15

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v1, 0x7f0a03c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorImageView;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v2, 0x7f0a03c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ColorImageView;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v3, 0x7f0a03c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ColorImageView;

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v4, 0x7f0a03c9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/ColorImageView;

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v5, 0x7f0a03ca

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorImageView;

    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v6, 0x7f0a03cb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/ColorImageView;

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v7, 0x7f0a03cc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/ColorImageView;

    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v8, 0x7f0a03cd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/ColorImageView;

    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a03ce

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/ColorImageView;

    iget-object v9, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v10, 0x7f0a03cf

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/ColorImageView;

    iget-object v10, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v11, 0x7f0a03d0

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/ColorImageView;

    iget-object v11, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v12, 0x7f0a03d1

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ui/ColorImageView;

    iget-object v12, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v13, 0x7f0a03d2

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v12, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v13, 0xd

    new-array v13, v13, [Landroid/view/View;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v14, 0x1

    aput-object v1, v13, v14

    const/4 v14, 0x2

    aput-object v2, v13, v14

    const/4 v14, 0x3

    aput-object v3, v13, v14

    const/4 v14, 0x4

    aput-object v4, v13, v14

    const/4 v14, 0x5

    aput-object v5, v13, v14

    const/4 v14, 0x6

    aput-object v6, v13, v14

    const/4 v14, 0x7

    aput-object v7, v13, v14

    const/16 v14, 0x8

    aput-object v8, v13, v14

    const/16 v14, 0x9

    aput-object v9, v13, v14

    const/16 v14, 0xa

    aput-object v10, v13, v14

    const/16 v14, 0xb

    aput-object v11, v13, v14

    const/16 v14, 0xc

    aput-object v12, v13, v14

    invoke-static {v13}, Lcom/android/camera/animation/FolmeUtils;->touchTint([Landroid/view/View;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {p0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$checkFeatureState$4(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onInstallStateChanged(Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic lambda$expandExtraView$8(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClickByExtraMenu$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$provideRotateItem$5(Ljava/util/List;Landroid/widget/ImageView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/camera/data/data/config/TopConfigItem;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/camera/data/data/config/TopConfigItem;

    iget v0, v0, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$provideRotateItem$6(ILjava/util/List;Landroid/widget/ImageView;)V
    .locals 2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/camera/data/data/config/TopConfigItem;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/camera/data/data/config/TopConfigItem;

    iget v0, v0, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    const/16 v1, 0xd9

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getRotation()F

    move-result v0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-eqz p0, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$reInitAlert$7(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfFlash(Z)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfMusicHint(Z)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertUpdateValue(IILjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateLyingDirectHint(ZZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xc1

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xa2

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;->reShowMoon()V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xa4

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showTips(Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;Z)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckVideoUltraClearTip()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckVideo4KHDR10P()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckVideoHDR10Tip()V

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterResetTip(Z)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterDescriptionTip()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckVideoLog()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckRaw()V

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFastMotion(Z)V

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->recheckVideoFps(Z)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckDocumentMode()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckDualVideoMode()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckHanGestureDescTip()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckAiAudioSingleDescTip()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckAiAudioNewDescTip()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckSpeechShutterDescTip()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckAmbilight()V

    :cond_3
    return-void
.end method

.method static synthetic lambda$setTopImageResource$3(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$updateTextViewTitle$2(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private notifyExtraMenuVisibilityChange(Z)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xc1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;->onExtraMenuVisibilityChange(Z)V

    :cond_0
    return-void
.end method

.method private onClickByExtraMenu(Landroid/view/View;Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    const-string v2, "FragmentTopConfig"

    if-nez v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extra menu click exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid tag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string v5, "pref_speech_shutter"

    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    const/16 v5, 0xed

    const/16 v6, 0x106

    const/4 v7, -0x1

    if-eq v0, v5, :cond_4

    const/16 v5, 0xfb

    if-eq v0, v5, :cond_3

    const/16 v5, 0xff

    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_1

    move v5, v4

    move v9, v5

    move v8, v7

    goto :goto_1

    :cond_1
    const v5, 0x7f110875

    move v9, v3

    move v8, v5

    move v5, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getResText()I

    move-result v8

    iget v9, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v5, v9}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v5

    move v9, v3

    goto :goto_1

    :cond_3
    const v5, 0x7f110504

    iget v8, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v8

    goto :goto_0

    :cond_4
    const v5, 0x7f1106d2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v8, v9}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v8

    :goto_0
    move v9, v3

    move v10, v8

    move v8, v5

    move v5, v10

    :goto_1
    if-eq v0, v6, :cond_6

    if-eqz v1, :cond_5

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$0m51wj99VnpsYBddTCjVuk0CEyc;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$0m51wj99VnpsYBddTCjVuk0CEyc;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/view/View;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {p1, v1, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_6
    :goto_2
    if-eq v8, v7, :cond_8

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragment;->mTTSHelper:Lcom/android/camera/tts/TTSHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_7

    const v5, 0x7f110041

    goto :goto_3

    :cond_7
    const v5, 0x7f11008e

    :goto_3
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/tts/TTSHelper;->speakingTextInTalkbackMode(Lcom/android/camera/tts/TTSHelper;Ljava/lang/String;)V

    :cond_8
    :goto_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v5, "top config onClickByExtraMenu, ConfigItem=0x%x"

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0a0333

    const/16 v2, 0xaa

    if-eq v0, v2, :cond_a

    const/16 v2, 0xdb

    if-eq v0, v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v1, :cond_b

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showExtraReferenceLineMenu()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const-string p1, "pref_camera_referenceline_key"

    invoke-virtual {p0, p1, v4}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-interface {p2, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v1, :cond_b

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showExtraTimerBurstMenu()V

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setTimerBurstEnable(Z)V

    invoke-interface {p2, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    return-void

    :cond_b
    :goto_5
    invoke-interface {p2, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    const/16 p1, 0xe1

    if-eq v0, p1, :cond_e

    const/16 p1, 0xf2

    if-eq v0, p1, :cond_d

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_c
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->hideExtraMenu()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xc1

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;->startAiLens()V

    goto :goto_6

    :cond_e
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->removeExtraMenu(I)V

    :cond_f
    :goto_6
    return-void
.end method

.method private onInstallStateChanged(Ljava/util/HashMap;)V
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

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v2}, Lcom/android/camera/data/observeable/VMFeature;->getFeatureNameByLocalMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/observeable/VMFeature;->getScope(I)I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private reConfigTipOfAiEnhancedVideo()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiEnhancedVideo()Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;->isSwitchOn(I)Z

    move-result v0

    const v1, 0x7f110730

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiEnhancedVideoHint(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiEnhancedVideoHint(II)V

    :goto_0
    return-void
.end method

.method private reConfigTipOfFlash(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    const-string v3, "101"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4, v3, v4, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    goto :goto_1

    :cond_3
    const-string v3, "5"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4, v3, v4, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isFlashShowing()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    invoke-virtual {p0, v0, v2, v4, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0, v4, v2, v4, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    :cond_6
    :goto_1
    return-void
.end method

.method private reConfigTipOfHdr(Z)V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0, v2, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZZ)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isHDRShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    invoke-direct {p0, v0, v2, v2, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZZ)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v2, v2, v2, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private reConfigTipOfMusicHint(Z)V
    .locals 2

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xae

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_0

    const/16 p1, 0x8

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertTopMusicHint(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveMusic()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    aget-object p1, p1, v0

    invoke-direct {p0, v1, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertTopMusicHint(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private reConfigTipOfSubtitle()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->isSwitchOn(I)Z

    move-result v0

    const v1, 0x7f1107f5

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSubtitleHint(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSubtitleHint(II)V

    :goto_0
    return-void
.end method

.method private reConfigTipOfSuperNightSe()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSuperNightSeTip(I)V

    return-void
.end method

.method private rotateExtraMenu()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mRTExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/top/ExtraAdapter;->setDegree(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/top/ExtraAdapter;->setDegree(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMenuViewBackgroundHeight(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    const p0, 0x7f0a0265

    invoke-virtual {v0, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x3f666666

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :goto_1
    return v3

    :cond_5
    return v1
.end method

.method private scaleExtraSubMenu(Landroid/view/View;Z)V
    .locals 11

    const-wide/16 v0, 0x12c

    if-eqz p2, :cond_0

    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance p2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f8851ec

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f8851ec

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance p2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method private setTopImageResource(Lcom/android/camera/data/data/config/TopConfigItem;Landroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;Z)Z
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget v4, v1, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    const/16 v5, 0xc1

    const-string v8, "normal"

    const-string v9, "FragmentTopConfig"

    const v11, 0x7f08023e

    const v12, 0x7f11008e

    const v13, 0x7f110041

    const-string v14, ", "

    const-string v15, "on"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_35

    :sswitch_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0x1ad

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    invoke-interface {v3, v6}, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;->getRecorderManager(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v8, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$FDquN1SQht7O5hUT1V2faNx6A0Q;->INSTANCE:Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$FDquN1SQht7O5hUT1V2faNx6A0Q;

    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3, v6}, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;->getRecorderManager(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v3

    if-eqz v3, :cond_1

    const v11, 0x7f08028f

    const v3, 0x7f080290

    const v4, 0x7f11008d

    goto/16 :goto_33

    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return v10

    :cond_2
    :goto_0
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return v10

    :sswitch_1
    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->isStreaming()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v10

    goto :goto_1

    :cond_3
    move v3, v7

    :goto_1
    const v11, 0x7f0801cf

    const v4, 0x7f110325

    goto/16 :goto_b

    :sswitch_2
    iget v3, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isMasterFilterOn(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const v4, 0x7f08036b

    goto :goto_2

    :cond_4
    const v4, 0x7f080369

    :goto_2
    move v11, v4

    const v4, 0x7f08036a

    const v8, 0x7f11005b

    move v9, v7

    goto/16 :goto_29

    :sswitch_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningVideoSky()Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->isActivated(I)Z

    move-result v3

    const v11, 0x7f080434

    const v4, 0x7f080435

    const v8, 0x7f1100cf

    goto/16 :goto_28

    :sswitch_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "3001"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "3001,24"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move v3, v7

    goto :goto_4

    :cond_6
    :goto_3
    move v3, v10

    :goto_4
    if-eqz v3, :cond_7

    const v4, 0x7f11001d

    goto :goto_5

    :cond_7
    const v4, 0x7f11001c

    :goto_5
    iget-object v8, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mVideo8KResource:[I

    aget v11, v8, v7

    goto/16 :goto_b

    :sswitch_5
    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v3

    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSuperMacroResources:[I

    aget v11, v4, v7

    aget v4, v4, v10

    if-eqz v3, :cond_8

    const v8, 0x7f1100bd

    goto/16 :goto_28

    :cond_8
    const v8, 0x7f1100bc

    goto/16 :goto_28

    :sswitch_6
    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAutoZoomResources:[I

    aget v3, v3, v10

    goto :goto_6

    :cond_9
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAutoZoomResources:[I

    aget v3, v3, v7

    :goto_6
    move v11, v3

    const v3, 0x7f110157

    goto/16 :goto_11

    :sswitch_7
    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v4

    iget-object v8, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCinematicRatioResources:[I

    aget v11, v8, v7

    aget v8, v8, v10

    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v3

    if-eqz v3, :cond_a

    const v3, 0x7f11008a

    goto :goto_7

    :cond_a
    const v3, 0x7f110089

    :goto_7
    move v9, v10

    move v12, v11

    move v11, v8

    move-object v8, v6

    goto/16 :goto_12

    :sswitch_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveMusic()[Ljava/lang/String;

    move-result-object v3

    const v11, 0x7f080406

    const v4, 0x7f080407

    const v8, 0x7f110419

    aget-object v3, v3, v10

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v10

    move v9, v3

    goto/16 :goto_29

    :cond_b
    move v3, v7

    goto/16 :goto_28

    :sswitch_9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setTopImageResource: VIDEO_BOKEH isSwitchOn = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_c

    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mVideoBokehResource:[I

    aget v4, v4, v10

    goto :goto_8

    :cond_c
    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mVideoBokehResource:[I

    aget v4, v4, v7

    :goto_8
    move v11, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f110732

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_d

    goto :goto_9

    :cond_d
    move v12, v13

    :goto_9
    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move v4, v7

    goto/16 :goto_2d

    :sswitch_a
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v3

    if-eqz v3, :cond_e

    const v11, 0x7f080236

    const v3, 0x7f080237

    const v4, 0x7f11077e

    goto/16 :goto_33

    :cond_e
    const v11, 0x7f080234

    const v4, 0x7f1105ae

    goto/16 :goto_1e

    :sswitch_b
    const/16 v4, 0xae

    if-eq v3, v4, :cond_f

    iget v3, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    goto :goto_a

    :cond_f
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveBeautyOpen()Z

    move-result v3

    :goto_a
    const v11, 0x7f080200

    const v4, 0x7f110028

    goto :goto_b

    :sswitch_c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->getResIcon(Z)I

    move-result v11

    iget v4, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isEnabled(I)Z

    move-result v3

    const v4, 0x7f1102b2

    :goto_b
    move-object v8, v6

    :goto_c
    move v9, v10

    :goto_d
    move v12, v11

    :goto_e
    move v11, v7

    goto/16 :goto_36

    :sswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getSettingResources()I

    move-result v11

    const v4, 0x7f1100ae

    goto/16 :goto_1e

    :sswitch_e
    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v4

    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDocumentResources:[I

    aget v3, v3, v10

    goto :goto_f

    :cond_10
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDocumentResources:[I

    aget v3, v3, v7

    :goto_f
    move v11, v3

    const v3, 0x7f11076c

    goto :goto_11

    :sswitch_f
    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v4

    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAutoZoomResources:[I

    aget v3, v3, v10

    goto :goto_10

    :cond_11
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAutoZoomResources:[I

    aget v3, v3, v7

    :goto_10
    move v11, v3

    const v3, 0x7f1107f5

    if-nez p5, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfSubtitle()V

    :cond_12
    :goto_11
    move-object v8, v6

    move v9, v10

    move v12, v11

    move v11, v7

    :goto_12
    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    goto/16 :goto_36

    :sswitch_10
    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSuperEISResources:[I

    aget v4, v4, v10

    goto :goto_13

    :cond_13
    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSuperEISResources:[I

    aget v4, v4, v7

    :goto_13
    move v11, v4

    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_14

    const v4, 0x7f1100ba

    goto :goto_14

    :cond_14
    const v4, 0x7f1100b9

    :goto_14
    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v3

    goto :goto_b

    :sswitch_11
    const v11, 0x7f0801fc

    const v4, 0x7f11045f

    goto/16 :goto_1e

    :sswitch_12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPortraitResources:[I

    aget v4, v4, v10

    goto :goto_15

    :cond_15
    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPortraitResources:[I

    aget v4, v4, v7

    :goto_15
    move v11, v4

    const v4, 0x7f1108f1

    goto/16 :goto_b

    :sswitch_13
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2e

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v11

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getValueSelectedShadowDrawableId(I)I

    move-result v8

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigMeter;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v4

    move v3, v7

    :goto_16
    move v9, v10

    :goto_17
    move v12, v11

    :goto_18
    move v11, v8

    goto/16 :goto_2b

    :sswitch_14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigEntryRes(I)I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigEntryShadowRes(I)I

    move-result v8

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isTopFilterEntry()Z

    move-result v9

    xor-int/2addr v9, v10

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result v3

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isTopBeautyEntry()Z

    move-result v15

    if-eqz v15, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f11090c

    invoke-virtual {v0, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_16

    goto :goto_19

    :cond_16
    move v12, v13

    :goto_19
    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v12, v11

    move v11, v8

    move-object v8, v4

    goto/16 :goto_31

    :cond_17
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getTopConfigEntryDesRes()I

    move-result v4

    goto :goto_17

    :sswitch_15
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v3

    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPhotographyIconResources:[I

    aget v11, v4, v7

    aget v4, v4, v10

    if-eqz v3, :cond_18

    iget-object v8, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPhotographyTipString:[Ljava/lang/String;

    aget-object v8, v8, v10

    goto :goto_1a

    :cond_18
    iget-object v8, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPhotographyTipString:[Ljava/lang/String;

    aget-object v8, v8, v7

    :goto_1a
    move v9, v10

    move v12, v11

    move v11, v4

    goto/16 :goto_31

    :sswitch_16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    const-string v4, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraWideBokehResources:[I

    aget v11, v4, v7

    aget v4, v4, v10

    if-eqz v3, :cond_19

    const v8, 0x7f11003a

    goto/16 :goto_28

    :cond_19
    const v8, 0x7f110039

    goto/16 :goto_28

    :sswitch_17
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v3

    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotResource:[I

    aget v11, v4, v7

    aget v4, v4, v10

    if-eqz v3, :cond_1a

    const v8, 0x7f110032

    goto/16 :goto_28

    :cond_1a
    const v8, 0x7f110031

    goto/16 :goto_28

    :sswitch_18
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2e

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v11

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v4

    move-object v8, v6

    move v3, v10

    move v9, v3

    goto/16 :goto_d

    :sswitch_19
    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v4

    iget-object v8, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAiSceneResources:[I

    aget v11, v8, v7

    aget v8, v8, v10

    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    const v16, 0x7f110021

    goto :goto_1b

    :cond_1b
    const v16, 0x7f110020

    :goto_1b
    invoke-direct {v0, v7}, Lcom/android/camera/fragment/top/FragmentTopConfig;->configBottomPopupTips(Z)V

    goto/16 :goto_2f

    :sswitch_1a
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const v4, 0x7f080395

    goto :goto_1c

    :cond_1c
    const v4, 0x7f080394

    :goto_1c
    move v11, v4

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const v4, 0x7f11002e

    goto :goto_1d

    :cond_1d
    const v4, 0x7f11002d

    :goto_1d
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_b

    :sswitch_1b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2e

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v11

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getValueSelectedShadowDrawable(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4, v9, v3}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getCurrentPromptInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    move v3, v7

    move v9, v10

    move v12, v11

    move v11, v8

    move-object v8, v4

    move v4, v3

    goto/16 :goto_36

    :sswitch_1c
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMoreResources:[I

    aget v11, v3, v7

    aget v3, v3, v10

    const v4, 0x7f11008c

    goto/16 :goto_33

    :sswitch_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getPortraitResources()I

    move-result v11

    const v4, 0x7f1100a3

    :goto_1e
    move-object v8, v6

    move v3, v7

    move v9, v10

    move v12, v11

    move v11, v3

    goto/16 :goto_36

    :sswitch_1e
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_20

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v11

    check-cast v11, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    const-string v12, "auto"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    if-eqz v11, :cond_1e

    invoke-interface {v11}, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;->getAutoHDRTargetState()Z

    move-result v8

    if-eqz v8, :cond_1e

    goto :goto_1f

    :cond_1e
    move v8, v7

    goto :goto_20

    :cond_1f
    :goto_1f
    move v8, v10

    :goto_20
    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v11

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedShadowDrawable(I)I

    move-result v12

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v3

    move v4, v3

    move v3, v8

    goto :goto_21

    :cond_20
    move v3, v7

    move v4, v3

    move v11, v4

    move v12, v11

    :goto_21
    const-string/jumbo v8, "setTopImageResource\uff1arefresh HDR ui"

    invoke-static {v9, v8}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v6

    move v9, v10

    move/from16 v17, v12

    move v12, v11

    move/from16 v11, v17

    goto/16 :goto_36

    :sswitch_1f
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_25

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "2"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "101"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "5"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    goto :goto_22

    :cond_21
    move v8, v7

    goto :goto_23

    :cond_22
    :goto_22
    move v8, v10

    :goto_23
    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v9

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedShadowDrawable(I)I

    move-result v11

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v3

    if-nez p5, :cond_23

    invoke-direct {v0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfFlash(Z)V

    goto :goto_24

    :cond_23
    if-eqz p5, :cond_24

    iget v12, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v13, 0xa7

    if-ne v12, v13, :cond_24

    invoke-direct {v0, v10}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfFlash(Z)V

    :cond_24
    :goto_24
    move/from16 v17, v8

    move v8, v3

    move/from16 v3, v17

    goto :goto_25

    :cond_25
    move v3, v7

    move v8, v3

    move v9, v8

    move v11, v9

    :goto_25
    iget v12, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v4, v12}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isDisabled(I)Z

    move-result v4

    xor-int/2addr v4, v10

    iput-boolean v4, v1, Lcom/android/camera/data/data/config/TopConfigItem;->enable:Z

    move v4, v8

    move v12, v9

    move v9, v10

    goto :goto_2b

    :sswitch_20
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result v3

    const v11, 0x7f080341

    const v4, 0x7f080342

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Display;->isFoldDisplayType()Z

    move-result v9

    if-eqz v9, :cond_26

    const v9, 0x7f110356

    goto :goto_26

    :cond_26
    const v9, 0x7f110607

    :goto_26
    invoke-virtual {v0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_27

    goto :goto_27

    :cond_27
    move v12, v13

    :goto_27
    invoke-virtual {v0, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1a

    :sswitch_21
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningPictureStyle()Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;->isActivated()Z

    move-result v3

    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mManualPictureStyleResources:[I

    aget v11, v4, v7

    aget v4, v4, v10

    const v8, 0x7f110459

    :goto_28
    move v9, v10

    :goto_29
    move v12, v11

    move v11, v4

    :goto_2a
    move v4, v8

    :goto_2b
    move-object v8, v6

    goto/16 :goto_36

    :sswitch_22
    const v4, 0x7f110049

    :goto_2c
    move-object v8, v6

    move v3, v7

    move v9, v10

    move v12, v11

    const v11, 0x7f08023f

    goto/16 :goto_36

    :sswitch_23
    const v11, 0x7f08034a

    move-object v8, v6

    move v3, v7

    move v4, v3

    :goto_2d
    move v9, v10

    move v12, v11

    move v11, v4

    goto/16 :goto_36

    :sswitch_24
    return v7

    :sswitch_25
    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v4

    iget-object v8, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAiSceneResources:[I

    aget v11, v8, v7

    aget v8, v8, v10

    invoke-static/range {p3 .. p3}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v3

    if-eqz v3, :cond_28

    const v16, 0x7f110021

    goto :goto_2e

    :cond_28
    const v16, 0x7f110020

    :goto_2e
    if-nez p5, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfAiEnhancedVideo()V

    :cond_29
    :goto_2f
    move v3, v4

    move v9, v10

    move v12, v11

    move/from16 v4, v16

    goto/16 :goto_18

    :sswitch_26
    const v11, 0x7f080437

    const v3, 0x7f08043b

    const v4, 0x7f110436

    goto/16 :goto_33

    :sswitch_27
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAiUltraPixelPhotographyDrawables:[I

    aget v11, v3, v7

    aget v3, v3, v10

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v8, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAiUltraPixelPhotographyTips:[Ljava/lang/String;

    aget-object v8, v8, v10

    goto :goto_30

    :cond_2a
    iget-object v8, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAiUltraPixelPhotographyTips:[Ljava/lang/String;

    aget-object v8, v8, v7

    :goto_30
    move v9, v10

    move v12, v11

    move v11, v3

    move v3, v4

    :goto_31
    move v4, v7

    goto/16 :goto_36

    :sswitch_28
    const v11, 0x7f08037a

    const v3, 0x7f08037b

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isPanoramaVertical(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const v8, 0x7f110075

    goto :goto_32

    :cond_2b
    const v8, 0x7f110074

    :goto_32
    move v9, v10

    move v12, v11

    move v11, v3

    move v3, v4

    goto/16 :goto_2a

    :sswitch_29
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2e

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v11

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v9

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v10

    move-object v8, v6

    move v4, v9

    goto/16 :goto_c

    :sswitch_2a
    const v11, 0x7f0801cd

    const v3, 0x7f0801ce

    const v4, 0x7f11010d

    :goto_33
    move-object v8, v6

    move v9, v10

    move v12, v11

    move v11, v3

    move v3, v7

    goto :goto_36

    :sswitch_2b
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2e

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v11

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v8

    invoke-virtual {v4, v3}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v10

    move v4, v8

    move v9, v10

    move v12, v11

    move-object v8, v6

    goto/16 :goto_e

    :sswitch_2c
    const/16 v4, 0xcc

    if-ne v3, v4, :cond_2c

    const v4, 0x7f110329

    goto/16 :goto_2c

    :cond_2c
    const v4, 0x7f110048

    goto/16 :goto_2c

    :sswitch_2d
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v3

    if-eqz v3, :cond_2d

    const v4, 0x7f110086

    goto :goto_34

    :cond_2d
    const v4, 0x7f110085

    :goto_34
    iget v11, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mGifResource:I

    const v8, 0x7f08041b

    goto/16 :goto_16

    :cond_2e
    :goto_35
    move-object v8, v6

    move v3, v7

    move v4, v3

    move v11, v4

    move v12, v11

    move v9, v10

    :goto_36
    if-lez v12, :cond_3d

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-direct {v0, v1, v2, v13}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getInitialMargin(Lcom/android/camera/data/data/config/TopConfigItem;Landroid/widget/ImageView;I)I

    move-result v13

    iput v13, v1, Lcom/android/camera/data/data/config/TopConfigItem;->margin:I

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    iget v14, v1, Lcom/android/camera/data/data/config/TopConfigItem;->margin:I

    if-lez v14, :cond_30

    iget v15, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v16, 0x800003

    or-int v15, v15, v16

    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v15, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v15, :cond_2f

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_37

    :cond_2f
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_37

    :cond_30
    invoke-virtual {v13, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_37
    iget v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v14, v14, 0x10

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v13, v1, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    const/16 v14, 0xb1

    if-ne v13, v14, :cond_31

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_38

    :cond_31
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_38
    if-lez v11, :cond_32

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_39

    :cond_32
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_39
    if-eqz v9, :cond_34

    if-eqz v3, :cond_33

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v3

    goto :goto_3a

    :cond_33
    const/4 v3, -0x1

    :goto_3a
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3b

    :cond_34
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_3b
    iget v3, v1, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    if-ne v3, v5, :cond_36

    iget-boolean v3, v1, Lcom/android/camera/data/data/config/TopConfigItem;->enable:Z

    const v5, 0x3ecccccd

    if-nez v3, :cond_35

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3c

    :cond_35
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_36

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_36
    :goto_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/BaseFragment;->isBothLandscapeMode()Z

    move-result v3

    const/high16 v5, 0x42b40000    # 90.0f

    if-eqz v3, :cond_39

    iget v1, v1, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    const/16 v3, 0xd9

    if-ne v1, v3, :cond_37

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3e

    :cond_37
    iget v1, v0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/16 v3, 0xb4

    if-ge v1, v3, :cond_38

    goto :goto_3d

    :cond_38
    const/high16 v5, 0x43870000    # 270.0f

    :goto_3d
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3e

    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3e

    :cond_3a
    iget v1, v1, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    const/16 v3, 0xa9

    if-ne v1, v3, :cond_3b

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3e

    :cond_3b
    iget v1, v0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_3e
    if-lez v4, :cond_3c

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3f

    :cond_3c
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3d
    :goto_3f
    return v10

    :sswitch_data_0
    .sparse-switch
        0xa2 -> :sswitch_2d
        0xa4 -> :sswitch_2c
        0xa5 -> :sswitch_2b
        0xa6 -> :sswitch_2a
        0xa8 -> :sswitch_29
        0xa9 -> :sswitch_28
        0xab -> :sswitch_27
        0xac -> :sswitch_26
        0xaf -> :sswitch_25
        0xb0 -> :sswitch_24
        0xb1 -> :sswitch_23
        0xb3 -> :sswitch_22
        0xb4 -> :sswitch_21
        0xb5 -> :sswitch_20
        0xc1 -> :sswitch_1f
        0xc2 -> :sswitch_1e
        0xc3 -> :sswitch_1d
        0xc5 -> :sswitch_1c
        0xc6 -> :sswitch_1b
        0xc8 -> :sswitch_1a
        0xc9 -> :sswitch_19
        0xcd -> :sswitch_18
        0xce -> :sswitch_17
        0xcf -> :sswitch_16
        0xd1 -> :sswitch_15
        0xd4 -> :sswitch_14
        0xd6 -> :sswitch_13
        0xd7 -> :sswitch_12
        0xd9 -> :sswitch_11
        0xda -> :sswitch_10
        0xdc -> :sswitch_f
        0xdd -> :sswitch_e
        0xe1 -> :sswitch_d
        0xe3 -> :sswitch_c
        0xef -> :sswitch_b
        0xf2 -> :sswitch_a
        0xf3 -> :sswitch_9
        0xf5 -> :sswitch_8
        0xfb -> :sswitch_7
        0xfd -> :sswitch_6
        0xff -> :sswitch_5
        0x100 -> :sswitch_4
        0x103 -> :sswitch_3
        0x107 -> :sswitch_2
        0x200 -> :sswitch_1
        0x201 -> :sswitch_0
    .end sparse-switch
.end method

.method private setTopTipMarin(Landroid/view/View;Z)V
    .locals 10

    invoke-static {}, Lcom/android/camera/Display;->getTopHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v2, v1

    const v3, 0x3fa9db23

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v3, v2, v1

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v5, 0xa5

    if-ne v4, v5, :cond_0

    int-to-long v4, v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x3f8e4f765fd8adacL    # 0.0148

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    :goto_0
    add-long/2addr v4, v6

    long-to-int v0, v4

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    if-nez v4, :cond_1

    int-to-long v4, v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x3fad63886594af4fL    # 0.0574

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    goto :goto_0

    :cond_1
    int-to-long v4, v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x3fb6c226809d4952L    # 0.0889

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    goto :goto_0

    :goto_1
    sub-int/2addr v0, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDelayNumber: topMargin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", topHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Display;->getTopHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", fontHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", viewHeight = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentTopConfig"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0700e7

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    add-int/2addr v0, p2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-lez p0, :cond_3

    int-to-float p0, p0

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    :cond_3
    return-void
.end method

.method private showExtraMenu()V
    .locals 2

    const-string v0, "FragmentTopConfig"

    const-string v1, "config showExtraMenu"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->hideSwitchTip()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->hideAlert()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->initExtraMenu(Z)V

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMenuViewBackgroundHeight(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, v1, v0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->notifyExtraMenuVisibilityChange(Z)V

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsVideoCastIntent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->hideRecordingTime()V

    :cond_0
    return-void
.end method

.method private showExtraReferenceLineMenu()V
    .locals 2

    const-string v0, "FragmentTopConfig"

    const-string/jumbo v1, "showExtraReferenceLineMenu"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->initReferenceLineMenu()V

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->switchExtraReferenceLineMenu()V

    return-void
.end method

.method private showExtraTimerBurstMenu()V
    .locals 2

    const-string v0, "FragmentTopConfig"

    const-string/jumbo v1, "showExtraTimerBurstMenu"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->initExtraTimerBurstMenu()V

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->switchExtraTimerBurstMenu()V

    return-void
.end method

.method private showTips(Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;Z)V
    .locals 4

    const-string/jumbo p2, "ultra_pixel"

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelOpenTip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckModuleUltraPixel()V

    const-string/jumbo p2, "video_beautify"

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckVideoBeautify()V

    :cond_1
    const-string p2, "ai_watermark"

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    invoke-interface {p1, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckAIWatermark(Z)V

    :cond_2
    const-string p2, "hdr"

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckVideoHdr()V

    :cond_3
    const-string/jumbo p2, "super_eis"

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckSuperEIS()V

    :cond_4
    const-string/jumbo p2, "super_eis_pro"

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckSuperEISPro()V

    :cond_5
    const-string p2, "live_shot"

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckLiveShot()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckColorEnhance()V

    :cond_7
    const-string/jumbo p2, "ultra_wide_bokeh"

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckUltraWideBokeh()V

    :cond_8
    const-string p2, "ai_audio"

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckAiAudio()V

    :cond_9
    const-string p2, "live_duration"

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckAiAudio()V

    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckSkinColor()V

    :cond_b
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xa1

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xa2

    if-eq v0, v3, :cond_c

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_d

    :cond_c
    if-eqz p2, :cond_d

    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_0

    :cond_d
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_e

    if-nez v2, :cond_e

    const-string p2, "macro"

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckMacroMode()V

    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_f

    const-string/jumbo p2, "timer_burst"

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTipsState(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckTimerBurst()V

    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_10

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckFrontBokenTip()V

    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_11

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckHandGesture()V

    :cond_11
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_12

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckSubtitleMode()V

    :cond_12
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_13

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckAiAudio()V

    :cond_13
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_14

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckAiAudioSingle()V

    :cond_14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const v0, 0xff00

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsVideoCastIntent:Z

    if-eqz v0, :cond_16

    if-eqz p2, :cond_16

    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->isVideoCastStatePaused()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckVideoCastPauseState()V

    :cond_15
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_16

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p2

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->hideRecordingTime()V

    :cond_16
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p2

    if-nez p2, :cond_17

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckAiEnhancedVideo()V

    :cond_17
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xc3

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->isStartCountCapture()Z

    move-result p2

    if-nez p2, :cond_19

    :cond_18
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckTilt()V

    :cond_19
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProPhotoHistogramOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    if-eqz p2, :cond_1b

    invoke-virtual {p2, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertHistogram(I)V

    :cond_1b
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoAudioMapOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz p2, :cond_1c

    invoke-virtual {p2, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAudioMap(I)V

    invoke-virtual {p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getVolumeControlPanel()Lcom/android/camera/VolumeControlPanel;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getGainValueReset()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/VolumeControlPanel;->gainValueReset(F)V

    invoke-virtual {p2, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setAudioMapVisibility(I)V

    :cond_1c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p0

    if-nez p0, :cond_1d

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportExtraMenu()Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reConfigESPDisplay()V

    :cond_1d
    return-void
.end method

.method private switchExtraReferenceLineMenu()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMenuViewBackgroundHeight(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v3, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMenuViewBackgroundHeight(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v3, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->scaleExtraSubMenu(Landroid/view/View;Z)V

    return-void
.end method

.method private switchExtraTimerBurstMenu()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMenuViewBackgroundHeight(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v3, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMenuViewBackgroundHeight(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v3, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->scaleExtraSubMenu(Landroid/view/View;Z)V

    return-void
.end method

.method private updateTextViewTitle()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    invoke-static {}, Lcom/android/camera/Display;->getMarginStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/android/camera/Display;->getMarginEnd()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0706aa

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v4, 0x7f1108d7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    const/high16 v2, 0x42480000    # 50.0f

    add-float/2addr p0, v2

    mul-float/2addr v1, v3

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance p0, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$B0r3x1RnDKA9EQ_LYGdeGfZ1rao;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$B0r3x1RnDKA9EQ_LYGdeGfZ1rao;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public alertAiAudio(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    xor-int/lit8 p0, p0, 0x1

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiAudio(IIZ)V

    return-void
.end method

.method public alertAiAudioBGHint(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiAudioBGHint(II)V

    return-void
.end method

.method public alertAiAudioMutexToastIfNeed(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiAudioMutexToastIfNeed(Landroid/content/Context;I)V

    return-void
.end method

.method public alertAiAudioNewDescTip(Ljava/lang/String;II)V
    .locals 6

    const-wide/16 v4, 0xbb8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiAudioNewDescTip(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public alertAiAudioNewDescTip(Ljava/lang/String;IIJ)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiAudioNewDescTip(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public alertAiAudioSingleBGHint(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiAudioSingleBGHint(II)V

    return-void
.end method

.method public alertAiAudioSingleDescTip(Ljava/lang/String;II)V
    .locals 6

    const-wide/16 v4, 0xbb8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiAudioSingleDescTip(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public alertAiAudioSingleDescTip(Ljava/lang/String;IIJ)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiAudioSingleDescTip(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public alertAiDetectTipHint(IIJ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(IIJ)V

    return-void
.end method

.method public alertAiEnhancedVideoHint(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiEnhancedVideoHint(II)V

    return-void
.end method

.method public alertAiSceneSelector(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiSceneSelector(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xaf

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigQrCodeTip()Z

    :cond_1
    return-void
.end method

.method public alertAutoHibernationDescTip(Ljava/lang/String;IIJ)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendDescTip(Ljava/lang/String;IIJ)V

    if-nez p2, :cond_3

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz p1, :cond_1

    const/16 p2, 0xb4

    if-ne p1, p2, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopTipMarin(Landroid/view/View;Z)V

    :cond_2
    iput-boolean p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureNumberAutoHibernationOffset:Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopTipMarin(Landroid/view/View;Z)V

    :cond_4
    iput-boolean p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureNumberAutoHibernationOffset:Z

    :goto_0
    return-void
.end method

.method public alertCastVideoHint(II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertCastVideoHint(II)V

    :cond_0
    return-void
.end method

.method public alertDocumentTip(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertDocumentTip(I)V

    return-void
.end method

.method public alertDualVideoHint(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertDualVideoHint(IIZ)V

    return-void
.end method

.method public alertEspDisplay(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertEspDisplay(II)V

    return-void
.end method

.method public alertFastmotionIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertFastmotionIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public alertFastmotionProValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertFastmotionProTip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public alertFastmotionValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertFastmotionTip(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public alertFlash(ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(ILjava/lang/String;ZZ)V

    return-void
.end method

.method public alertFlash(ILjava/lang/String;ZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_2

    if-nez p1, :cond_1

    if-eqz p3, :cond_2

    const/16 p3, 0xc1

    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reverseExpandTopBar(Z)Z

    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertFlash(ILjava/lang/String;)V

    return-void
.end method

.method public alertHDR(IZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZZ)V

    return-void
.end method

.method public alertHandGestureHint(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertHandGestureHint(I)V

    return-void
.end method

.method public alertLightingTip(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertLightingTip(I)V

    return-void
.end method

.method public alertLiveShotHint(II)V
    .locals 1

    const-string v0, "live_shot"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSwitchTip(Ljava/lang/String;II)V

    return-void
.end method

.method public alertMacroModeHint(II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xff

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopConfig(I)Z

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMacroModeHint(IIZ)V

    return-void
.end method

.method public alertMimojiFaceDetect(ZI)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMimojiFaceDetect(ZI)V

    return-void
.end method

.method public alertMoonModeSelector(IZ)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMoon()Lcom/android/camera/data/data/runing/ComponentRunningMoon;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eqz p2, :cond_1

    const-string p2, "moon"

    goto :goto_0

    :cond_1
    const-string p2, "night"

    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    const/16 v2, 0xf6

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSlideSwitchLayout(ZI)V

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa3

    if-ne p0, v1, :cond_4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xc3

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move p2, v0

    :goto_2
    invoke-interface {p0, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showOrHideChip(Z)V

    :cond_4
    return-void
.end method

.method public alertMusicClose(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMusicClose(Z)V

    :cond_0
    return-void
.end method

.method public alertParameterDescriptionTip(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertParameterDescriptionTip(IIZ)V

    return-void
.end method

.method public alertParameterResetTip(ZII)V
    .locals 6
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f070644

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int v4, v2, p0

    xor-int/lit8 v5, v1, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertParameterResetTip(ZIIIZ)V

    return-void
.end method

.method public alertProColourHint(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertProColourHint(II)V

    return-void
.end method

.method public alertRecommendDescTip(Ljava/lang/String;II)V
    .locals 6

    const-wide/16 v4, 0xbb8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertRecommendDescTip(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public alertRecommendDescTip(Ljava/lang/String;IIJ)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendDescTip(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0xbb8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method public alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method public alertSlideSwitchLayout(ZI)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertSlideSwitchLayout(ZI)V

    return-void
.end method

.method public alertSubtitleHint(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertSubtitleHint(II)V

    return-void
.end method

.method public alertSuperNightSeTip(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isSuperNightOwlDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f110892

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(IIJ)V

    goto :goto_0

    :cond_1
    const v0, 0x7f110894

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(IIJ)V

    :goto_0
    return-void
.end method

.method public alertSwitchTip(Ljava/lang/String;II)V
    .locals 0

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public alertSwitchTip(Ljava/lang/String;IIIJ)V
    .locals 7

    invoke-virtual {p0, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V

    return-void
.end method

.method public alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V
    .locals 7

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V

    return-void
.end method

.method public alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    const-wide/16 v5, 0xbb8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V

    return-void
.end method

.method public alertTimerBurstHint(II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xaa

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopConfig(I)Z

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTimerBurstHint(IIZ)V

    return-void
.end method

.method public alertTopHint(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTopHint(II)V

    return-void
.end method

.method public alertTopHint(IIJ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTopHint(IIJ)V

    return-void
.end method

.method public alertTopHint(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTopHint(ILjava/lang/String;)V

    return-void
.end method

.method public alertTopHint(ILjava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTopHint(ILjava/lang/String;J)V

    return-void
.end method

.method public alertUpdateValue(IILjava/lang/String;)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertUpdateValue(IILjava/lang/String;)V

    return-void
.end method

.method public alertVideoUltraClear(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    xor-int/lit8 p0, p0, 0x1

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertVideoUltraClear(IIZ)V

    return-void
.end method

.method public alertVideoUltraClear(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    xor-int/lit8 p0, p0, 0x1

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertVideoUltraClear(ILjava/lang/String;Z)V

    return-void
.end method

.method public animTopBlackCover()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->animationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShapeBackGroundView;->getCurrentMaskHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificHeight(ILjava/util/List;Z)V

    :cond_1
    return-void
.end method

.method public clearAlertStatus()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clearAlertStatus()V

    return-void
.end method

.method public clearAllTipsState()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTipsState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearFastmotionValue()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clearFastmotionTip()V

    return-void
.end method

.method public clearVideoUltraClear()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clearVideoUltraClear()V

    return-void
.end method

.method public containShortDurationDescriptionTips(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->containShortDurationDescriptionTips(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public directHideLyingDirectHint()V
    .locals 0

    return-void
.end method

.method public varargs disableMenuItem(Z[I)V
    .locals 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs enableMenuItem(Z[I)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p2, v1

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public enableSwitch()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->animationRunning()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public getAlertIsShow()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result p0

    return p0
.end method

.method public getCurrentAiSceneLevel()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentAiSceneLevel:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xf4

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00a6

    return p0
.end method

.method public getTipsState(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTipsState:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public getTopImage(I)Landroid/widget/ImageView;
    .locals 2

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/config/TopConfigItem;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoTag()Lcom/android/camera/ui/VideoTagView;
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getVideoTag()Lcom/android/camera/ui/VideoTagView;

    move-result-object p0

    return-object p0
.end method

.method public getVideoTagContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getVideoTagContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideAlert()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureNumberAutoHibernationOffset:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clear(Z)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hideConfigMenu()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    return-void
.end method

.method public hideDelayNumber()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x3b1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->hideDelayNumber()V

    :cond_1
    return-void
.end method

.method public hideExtraMenu()V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    return-void
.end method

.method public hideRecommendDescTip(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->hideRecommendDescTip(Ljava/lang/String;)V

    return-void
.end method

.method public hideSwitchTip()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->hideSwitchTip()V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getMoreResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMoreResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAiSceneResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAiSceneResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getCinematicRatioResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCinematicRatioResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAutoZoomResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAutoZoomResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getUltraWideBokehResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraWideBokehResources:[I

    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelTopMenuResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPhotographyIconResources:[I

    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelSwitchTipsString()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPhotographyTipString:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAiUltraPixelPhotographyTips()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAiUltraPixelPhotographyTips:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAiUltraPixelPhotographyDrawables()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAiUltraPixelPhotographyDrawables:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getLiveShotResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotResource:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getLightingResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLightingResource:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getVideoBokehResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mVideoBokehResource:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getSuperMacroResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSuperMacroResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getManualPictureStyleResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mManualPictureStyleResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getUltraPixelPortraitResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mUltraPixelPortraitResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getSuperEISResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSuperEISResources:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getVideo8KRecource()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mVideo8KResource:[I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getGifRecource()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mGifResource:I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getDocumentResources()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDocumentResources:[I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    new-instance v0, Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    const v0, 0x7f0a0420

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    const v0, 0x7f0a0418

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    const v0, 0x7f0a03d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShapeBackGroundView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    const v0, 0x7f0a03c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0a00e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferenceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a03d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a03d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v0, 0x7f0a01e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mImageViewBack:Landroid/widget/ImageView;

    const v0, 0x7f0a01e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0336

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineBack:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mImageViewBack:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mImageViewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a040a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTvShotInterval:Landroid/widget/TextView;

    const v0, 0x7f0a00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCustomSeekBarInterval:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    const v0, 0x7f0a00f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCustomSeekBarCount:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    const v0, 0x7f0a0224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLayoutCount:Landroid/view/View;

    const v0, 0x7f0a0225

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLayoutInterval:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getTopMargin()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getTopBarHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenuHeight:I

    invoke-static {}, Lcom/android/camera/Display;->getTopCoverHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundHeight:I

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v2

    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ui/ShapeBackGroundView;->initWidthHeight(II)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundHeight:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBackgroundView:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {}, Lcom/android/camera/Display;->getBackgroundLeftMargin()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ShapeBackGroundView;->setTopFloating(ZI)V

    :cond_0
    const v0, 0x7f0a03d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/top/TopExpendView;

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigTotalWidth:I

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->initTopView()V

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

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/Util;->startScreenSlideAlphaInAnimation(Landroid/view/View;)V

    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->provideAnimateElement(ILjava/util/List;I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsVideoCastIntent:Z

    return-void
.end method

.method public isContainAlertLightingTip(I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->parseLightingRes(I)I

    move-result p1

    aput p1, p0, v1

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isContainAlertRecommendTip([I)Z

    move-result p0

    return p0
.end method

.method public varargs isContainAlertRecommendTip([I)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isContainAlertRecommendTip([I)Z

    move-result p0

    return p0
.end method

.method public isCurrentRecommendTipText(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isCurrentRecommendTipText(I)Z

    move-result p0

    return p0
.end method

.method public isExtraMenuShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    return p0
.end method

.method public isHDRShowing()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isHDRShowing()Z

    move-result p0

    return p0
.end method

.method public isShowBacklightSelector()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShowBacklightSelector()Z

    move-result p0

    return p0
.end method

.method public isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTopConfig(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTopExpendAnimRuning()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->isTopExpendAnimRuning()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isZoomTipShowing()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isZoomTipShowing()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$checkFeatureState$4$FragmentTopConfig(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->lambda$checkFeatureState$4(Lcom/android/camera/data/observeable/RxData$DataWrap;)V

    return-void
.end method

.method public synthetic lambda$expandExtraView$8$FragmentTopConfig(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->lambda$expandExtraView$8(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onClick$0$FragmentTopConfig(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->lambda$onClick$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onClickByExtraMenu$1$FragmentTopConfig(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->lambda$onClickByExtraMenu$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$reInitAlert$7$FragmentTopConfig(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->lambda$reInitAlert$7(Z)V

    return-void
.end method

.method public needViewClear()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->notifyAfterFrameAvailable(I)V

    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/16 v1, 0xfe

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/16 v3, 0xd1

    if-eq p1, v3, :cond_2

    const/16 v3, 0xd2

    if-eq p1, v3, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xb8

    if-ne p1, v3, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->clearVideoUltraClear()V

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfFlash(Z)V

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipOfMusicHint(Z)V

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertUpdateValue(IILjava/lang/String;)V

    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v3, 0xcc

    if-eq p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animTopBlackCover()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    invoke-direct {p0, p1, v0, v3, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->configTopCoverVerticalOffset(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Ljava/util/List;ZZ)V

    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/top/ExtraAdapter;->animationRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/top/ExtraAdapter;->getTotalRow(I)I

    move-result p1

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_1

    :cond_7
    :goto_0
    return-void

    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v0, v1, :cond_9

    if-eqz p1, :cond_9

    invoke-direct {p0, p1, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showTips(Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;Z)V

    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const v0, 0xff00

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsVideoCastIntent:Z

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->isVideoCastStatePaused()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->isVideoCastStateRecording()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->checkFeatureState()V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDeferAnimVerticalOffset:Z

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mResetType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->provideAnimateElement(ILjava/util/List;I)V

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result v0

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f0a03c4

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p0, v0}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAngleChanged(F)V
    .locals 0

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 9

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/16 v3, 0xbc

    if-ne v0, v3, :cond_0

    if-ne p1, v1, :cond_0

    const v0, 0x7f11088b

    const-wide/16 v3, -0x1

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertAiDetectTipHint(IIJ)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v4, 0xb4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    const-string v4, "pref_audio_map_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAudioMapVisibilityState()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeHandlerCallBack()V

    invoke-virtual {v0, v6}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setAudioMapVisibility(I)V

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setVolumeControlAnimationViewVisibility(I)V

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setVolumeControlPanelVisibility(I)V

    :cond_1
    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v6

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reverseExpandTopBar(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->showRecordingTime()V

    return v5

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v5

    :goto_2
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_f

    :cond_8
    const/4 v4, -0x1

    const/4 v7, 0x7

    if-eq p1, v5, :cond_a

    const/4 v8, 0x2

    if-eq p1, v8, :cond_a

    if-eq p1, v3, :cond_9

    const/4 v8, 0x6

    if-eq p1, v8, :cond_9

    if-eq p1, v7, :cond_c

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->directHiddenExtraMenu()V

    :goto_3
    move v0, v6

    goto :goto_4

    :cond_9
    invoke-direct {p0, v4, v5, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    goto :goto_3

    :cond_a
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    if-nez v0, :cond_b

    return v6

    :cond_b
    invoke-direct {p0, v4, v5, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->animatorExtraMenuBackground(IZZ)V

    goto :goto_3

    :cond_c
    :goto_4
    if-eq p1, v3, :cond_d

    if-eq p1, v7, :cond_d

    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reInitAlert(Z)V

    :cond_d
    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackEvent ShowExtraMenuTemp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FragmentTopConfig"

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    if-nez v0, :cond_e

    if-eq p1, v1, :cond_e

    invoke-direct {p0, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->notifyExtraMenuVisibilityChange(Z)V

    iput-boolean v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraTimerMenu:Z

    iput-boolean v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraReferenceLineMenu:Z

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mReferencelineMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLlTimerMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_e
    return v5

    :cond_f
    return v6
.end method

.method public onBeautyRecordingStart()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public onBeautyRecordingStop()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "FragmentTopConfig"

    const-string/jumbo v3, "top config onclick"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a01de

    if-eq v3, v4, :cond_20

    const v4, 0x7f0a0336

    if-eq v3, v4, :cond_1f

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa01

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$MoreModePopupController;->shrink(Z)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v5, 0xa4

    invoke-virtual {v3, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0xa1

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v6

    if-eqz v6, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v6

    if-eqz v6, :cond_4

    return-void

    :cond_4
    iget-boolean v6, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    if-eqz v6, :cond_5

    invoke-direct {v0, v1, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onClickByExtraMenu(Landroid/view/View;Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;)V

    return-void

    :cond_5
    iget-object v6, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    instance-of v8, v6, Ljava/lang/Integer;

    if-eqz v8, :cond_6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_6

    return-void

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "top config item:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v8, v6, Lcom/android/camera/data/data/config/TopConfigItem;

    if-nez v8, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main menu click exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    check-cast v6, Lcom/android/camera/data/data/config/TopConfigItem;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v4, [Ljava/lang/Object;

    iget v10, v6, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string/jumbo v10, "top config onclick, ConfigItem=0x%x"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-lez v8, :cond_8

    iget-object v8, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    iget v9, v6, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-virtual {v8, v9}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_8

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v4, [Ljava/lang/Object;

    iget v3, v6, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v11

    const-string/jumbo v3, "top config onclick is disabled, ConfigItem=0x%x"

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v8

    const/16 v9, 0xb3

    const/16 v10, 0xa6

    if-eqz v8, :cond_9

    iget v8, v6, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    if-eq v8, v5, :cond_9

    const/16 v12, 0xe1

    if-eq v8, v12, :cond_9

    if-eq v8, v10, :cond_9

    if-eq v8, v9, :cond_9

    new-instance v8, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$L4OLTC9S_tdTaMHuGfqVXi8UUiE;

    invoke-direct {v8, v0, v1}, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$L4OLTC9S_tdTaMHuGfqVXi8UUiE;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/view/View;)V

    const-wide/16 v12, 0x64

    invoke-virtual {v1, v8, v12, v13}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v8

    const/16 v12, 0xe3

    invoke-virtual {v8, v12}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v8

    check-cast v8, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;

    iget v13, v6, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    const/16 v14, 0xa8

    if-eq v13, v14, :cond_1d

    const/16 v14, 0xa9

    if-eq v13, v14, :cond_1c

    const/16 v15, 0xab

    if-eq v13, v15, :cond_1b

    const/16 v11, 0xac

    if-eq v13, v11, :cond_1a

    const/16 v11, 0xc8

    if-eq v13, v11, :cond_18

    const/16 v11, 0xc9

    if-eq v13, v11, :cond_17

    const/16 v11, 0xf2

    const/4 v7, 0x0

    if-eq v13, v11, :cond_15

    const/16 v11, 0xf3

    if-eq v13, v11, :cond_14

    const/16 v11, 0xff

    if-eq v13, v11, :cond_13

    const/16 v11, 0x100

    if-eq v13, v11, :cond_12

    const-string v11, "attr_feature_name"

    const/16 v15, 0xa2

    sparse-switch v13, :sswitch_data_0

    packed-switch v13, :pswitch_data_0

    packed-switch v13, :pswitch_data_1

    packed-switch v13, :pswitch_data_2

    packed-switch v13, :pswitch_data_3

    goto/16 :goto_2

    :pswitch_0
    const/16 v0, 0xda

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :pswitch_1
    const/16 v0, 0xd9

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :pswitch_2
    const-string/jumbo v0, "value_vv_icon_click"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVClick(Ljava/lang/String;)V

    const/16 v0, 0xd8

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :pswitch_3
    const/16 v0, 0xd7

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :pswitch_4
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackMeterClick()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object v2

    iget v3, v6, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-direct {v0, v2, v1, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtraView(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    goto/16 :goto_2

    :pswitch_5
    const/16 v0, 0xcf

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :pswitch_6
    const/16 v0, 0xce

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    if-eqz v8, :cond_1e

    const/16 v0, 0xa3

    invoke-interface {v8, v0}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    goto/16 :goto_2

    :pswitch_7
    const/16 v0, 0xcd

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :pswitch_8
    const/16 v0, 0xb6

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :pswitch_9
    const/16 v0, 0xb5

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :pswitch_a
    const/16 v0, 0xb4

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :pswitch_b
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomAction;->onGuideClicked()V

    :cond_a
    invoke-interface {v3, v9}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :pswitch_c
    const/16 v0, 0xb2

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :pswitch_d
    invoke-interface {v3, v10}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :pswitch_e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object v2

    if-eqz v2, :cond_1e

    const/16 v3, 0xa5

    invoke-direct {v0, v2, v1, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtraView(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    goto/16 :goto_2

    :pswitch_f
    invoke-interface {v3, v5}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_0
    const/16 v0, 0x201

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_1
    const/16 v0, 0x200

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_2
    const/16 v0, 0x107

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_3
    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showOrHideVideoSky(Z)V

    goto/16 :goto_2

    :sswitch_4
    const/16 v0, 0xfd

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_5
    const/16 v0, 0xfb

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    if-eqz v8, :cond_1e

    invoke-interface {v8, v14}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    goto/16 :goto_2

    :sswitch_6
    iget v1, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xae

    if-ne v1, v2, :cond_b

    const-string v1, "feature_live_music_click"

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const/16 v2, 0xb7

    if-ne v1, v2, :cond_c

    const-string v1, "mi_live_click_music"

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    :cond_c
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/camera/fragment/music/LiveMusicActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v2

    const-string v3, "StartActivityWhenLocked"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    goto/16 :goto_2

    :sswitch_7
    const/16 v0, 0xef

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_8
    invoke-interface {v3, v12}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_9
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showSetting()V

    goto/16 :goto_2

    :sswitch_a
    const/16 v0, 0xdc

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_b
    const/16 v0, 0xd4

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_c
    const/16 v0, 0xd1

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_d
    const/16 v0, 0xcb

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataLive()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/extra/DataItemLive;

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object v2

    iget v3, v6, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-direct {v0, v2, v1, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtraView(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    goto/16 :goto_2

    :sswitch_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showExtraMenu()V

    if-eqz v8, :cond_1e

    invoke-interface {v8, v5}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    goto/16 :goto_2

    :sswitch_10
    const/16 v0, 0xc4

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_11
    const/16 v0, 0xc3

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v2

    iget v3, v6, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-direct {v0, v2, v1, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtraView(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    if-eqz v8, :cond_1e

    invoke-interface {v8, v15}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    goto/16 :goto_2

    :sswitch_13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_d

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->disableUpdate()Z

    move-result v4

    if-nez v4, :cond_10

    iget v2, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v4, 0xab

    if-ne v2, v4, :cond_f

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportFlashModeBackSoftLight()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_f

    iget v1, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    if-ne v1, v2, :cond_e

    const-string v2, "5"

    :cond_e
    iget v4, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onExpandValueChange(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    iget v2, v6, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-direct {v0, v3, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtraView(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    goto :goto_1

    :cond_10
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getDisableReasonString()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    :cond_11
    const-string v0, "ignore click flash for disable update"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v8, :cond_1e

    const/16 v0, 0xa1

    invoke-interface {v8, v0}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    goto/16 :goto_2

    :sswitch_14
    const/16 v0, 0xaf

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :sswitch_15
    invoke-interface {v3, v15}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :cond_12
    invoke-interface {v3, v11}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :cond_13
    invoke-interface {v3, v11}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :cond_14
    invoke-interface {v3, v11}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto/16 :goto_2

    :cond_15
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;->startAiLens()V

    :cond_16
    goto/16 :goto_2

    :cond_17
    invoke-interface {v3, v11}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    if-eqz v8, :cond_1e

    invoke-interface {v8, v10}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    goto :goto_2

    :cond_18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v2

    iget v5, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v2, v5}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->toggle(I)V

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v2

    iget v5, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v2, v5}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    iget v5, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v5, v2}, Lcom/android/camera/statistic/CameraStatUtils;->tarckBokenChanged(ILjava/lang/String;)V

    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v11, v5, v6

    invoke-virtual {v0, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    iget v5, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, v5, v2}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigHdrIfBokehChanged(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    new-array v1, v4, [I

    const/16 v4, 0xc2

    aput v4, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    :cond_19
    invoke-interface {v3, v2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configBokeh(Ljava/lang/String;)V

    goto :goto_2

    :cond_1a
    const-string/jumbo v0, "value_vv_click_workspace_into"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVWorkspaceClick(Ljava/lang/String;)V

    invoke-interface {v3, v11}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_2

    :cond_1b
    move v0, v15

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_2

    :cond_1c
    invoke-interface {v3, v14}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    new-array v1, v4, [I

    const/4 v2, 0x0

    aput v14, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    goto :goto_2

    :cond_1d
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-direct {v0, v2, v1, v14}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtraView(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    :cond_1e
    :goto_2
    return-void

    :cond_1f
    const-string v1, "onClick reference line back"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->switchExtraReferenceLineMenu()V

    iget-object v0, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_20
    const-string v1, "onClick timer burst back"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->switchExtraTimerBurstMenu()V

    iget-object v0, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa2 -> :sswitch_15
        0xaf -> :sswitch_14
        0xc1 -> :sswitch_13
        0xc2 -> :sswitch_12
        0xc3 -> :sswitch_11
        0xc4 -> :sswitch_10
        0xc5 -> :sswitch_f
        0xc6 -> :sswitch_e
        0xcb -> :sswitch_d
        0xd1 -> :sswitch_c
        0xd4 -> :sswitch_b
        0xdc -> :sswitch_a
        0xe1 -> :sswitch_9
        0xe3 -> :sswitch_8
        0xef -> :sswitch_7
        0xf5 -> :sswitch_6
        0xfb -> :sswitch_5
        0xfd -> :sswitch_4
        0x103 -> :sswitch_3
        0x107 -> :sswitch_2
        0x200 -> :sswitch_1
        0x201 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xa4
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xcd
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onExpandValueChange(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->showRecordingTime()V

    :cond_2
    const/4 v2, 0x1

    if-ne p2, p3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reverseExpandTopBar(Z)Z

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa1

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v3

    const-string v4, "FragmentTopConfig"

    const/16 v5, 0xc1

    const/16 v6, 0xc2

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    new-array p1, v2, [I

    const/16 p2, 0xc6

    aput p2, p1, v7

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xe8

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;

    if-eqz p1, :cond_5

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-long p2, p2

    invoke-interface {p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->setMaxDuration(J)V

    :cond_5
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckLiveDurationTip()V

    goto/16 :goto_0

    :sswitch_1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1, p3}, Lcom/android/camera/statistic/CameraStatUtils;->trackHdrChanged(ILjava/lang/String;)V

    new-array p1, v2, [I

    aput v6, p1, v7

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    const-string p1, "e"

    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->restoreMutexFlash(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, p3}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigFlashIfHdrChanged(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v2, [I

    aput v5, p1, v7

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    :cond_6
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, p3}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigBokehIfHdrChanged(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-array p1, v2, [I

    const/16 p2, 0xc8

    aput p2, p1, v7

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    :cond_7
    invoke-interface {v1, p3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configHdr(Ljava/lang/String;)V

    const-string p1, "hdr change"

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    const v3, 0x7f110658

    if-ne p1, v3, :cond_9

    const-string p1, "5"

    if-eq p2, p1, :cond_8

    if-ne p3, p1, :cond_9

    :cond_8
    const-string p1, "0"

    if-eq p3, p1, :cond_9

    const-string v3, "200"

    if-eq p3, v3, :cond_9

    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configBackSoftLightSwitch(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v3, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFlashChanged(ILjava/lang/String;)V

    :cond_9
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1, p3}, Lcom/android/camera/statistic/CameraStatUtils;->trackFlashChanged(ILjava/lang/String;)V

    new-array p1, v2, [I

    aput v5, p1, v7

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigHhrIfFlashChanged(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-array p2, v2, [I

    aput v6, p2, v7

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    :cond_a
    const-string p2, "flash change"

    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p3, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFlash(Ljava/lang/String;Z)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->setComponentPreValue(Ljava/lang/String;)V

    new-array p1, v2, [I

    const/16 p2, 0xa5

    aput p2, p1, v7

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    invoke-interface {v1, p2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_0

    :sswitch_4
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getKey(I)Ljava/lang/String;

    move-result-object p1

    new-array p1, v2, [I

    const/16 p2, 0xd6

    aput p2, p1, v7

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    invoke-interface {v1, p3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configMeter(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    new-array p1, v2, [I

    const/16 p2, 0xa8

    aput p2, p1, v7

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    invoke-interface {v1, p2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    invoke-static {p3}, Lcom/android/camera/statistic/CameraStatUtils;->trackAIAudio(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reverseExpandTopBar(Z)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f1105b7 -> :sswitch_5
        0x7f1105d1 -> :sswitch_4
        0x7f110606 -> :sswitch_3
        0x7f110658 -> :sswitch_2
        0x7f11066e -> :sswitch_1
        0x7f11078c -> :sswitch_0
    .end sparse-switch
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p3, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isInModeChanging()Z

    move-result v5

    if-nez v5, :cond_1

    if-ne p3, v1, :cond_2

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowTopLyingDirectHint:Z

    :cond_2
    invoke-virtual {p0, v3, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setSnapNumVisible(ZZ)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->hideDelayNumber()V

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_7

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v1, :cond_8

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_8

    goto :goto_1

    :cond_5
    if-ne p1, v1, :cond_8

    goto :goto_1

    :cond_6
    if-ne p1, v1, :cond_8

    goto :goto_1

    :cond_7
    if-ne p1, v1, :cond_8

    :goto_1
    move v1, v3

    goto :goto_3

    :cond_8
    :goto_2
    move v1, v2

    :goto_3
    if-eqz v1, :cond_a

    const/4 v1, 0x7

    if-ne p3, v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x4

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    :cond_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v1

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mScreenOrientation:I

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setScreenOrientation(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    invoke-direct {p0, v1, p2, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->configTopCoverBackground(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Ljava/util/List;I)V

    iget-boolean v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDeferAnimVerticalOffset:Z

    if-nez v5, :cond_c

    if-eqz p2, :cond_b

    goto :goto_5

    :cond_b
    move v5, v3

    goto :goto_6

    :cond_c
    :goto_5
    move v5, v2

    :goto_6
    iput-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDeferAnimVerticalOffset:Z

    if-eqz p2, :cond_d

    move v6, v2

    goto :goto_7

    :cond_d
    move v6, v3

    :goto_7
    invoke-direct {p0, v1, p2, v6, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->configTopCoverVerticalOffset(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Ljava/util/List;ZZ)V

    if-eqz v4, :cond_e

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->enableAllDisabledMenuItem()V

    :cond_e
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->provideAnimateElement(ILjava/util/List;I)V

    :cond_f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p3

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v4, :cond_10

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    :cond_10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const v4, 0xff00

    invoke-virtual {v1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;

    iget-boolean v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsVideoCastIntent:Z

    if-eqz v4, :cond_12

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->isVideoCastStateRecording()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$VideoCastStateProtocol;->isVideoCastStatePaused()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const/4 v1, -0x1

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    :cond_12
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getSupportedTopConfigs(IIZ)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    if-nez v1, :cond_13

    return-void

    :cond_13
    move v1, v3

    :goto_8
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1e

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v5, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfigItem(I)Lcom/android/camera/data/data/config/TopConfigItem;

    move-result-object v11

    if-eqz p2, :cond_14

    move v10, v2

    goto :goto_9

    :cond_14
    move v10, v3

    :goto_9
    move-object v5, p0

    move-object v6, v11

    move-object v7, v4

    move v8, p1

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(Lcom/android/camera/data/data/config/TopConfigItem;Landroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;Z)Z

    move-result v5

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/data/data/config/TopConfigItem;

    if-eqz v6, :cond_15

    iget v6, v6, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    iget v7, v11, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    if-ne v6, v7, :cond_15

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_15
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz v5, :cond_16

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    iget v7, v11, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_16

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Landroid/util/SparseBooleanArray;

    iget v7, v11, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_c

    :cond_16
    if-nez p2, :cond_18

    if-eqz v5, :cond_17

    invoke-static {v4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_c

    :cond_17
    invoke-static {v4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_c

    :cond_18
    const/16 v6, 0x96

    if-eqz v5, :cond_1b

    new-instance v5, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v5, v4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v7, 0xa7

    if-ne v4, v7, :cond_1a

    const/16 v4, 0xc1

    iget v7, v11, Lcom/android/camera/data/data/config/TopConfigItem;->configItem:I

    if-ne v4, v7, :cond_1a

    iget-boolean v4, v11, Lcom/android/camera/data/data/config/TopConfigItem;->enable:Z

    if-eqz v4, :cond_19

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_19
    const v4, 0x3ecccccd

    :goto_a
    invoke-virtual {v5, v4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setTargetAlpha(F)V

    :cond_1a
    invoke-virtual {v5, v6}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    invoke-static {v5}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1b
    const/16 v5, 0xa5

    if-eq v0, v5, :cond_1d

    iget v7, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v7, v5, :cond_1c

    goto :goto_b

    :cond_1c
    new-instance v5, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {v5, v4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v4

    invoke-static {v4}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1d
    :goto_b
    invoke-static {v4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    :cond_1e
    return-void
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

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->clone()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setScreenOrientation(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    const/4 p1, 0x0

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3, p3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->configTopCoverVerticalOffset(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;Ljava/util/List;ZZ)V

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

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->rotateExtraMenu()Z

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPanoramaModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$csyidz2ck5CBJspNAXRQPt1PKeg;

    invoke-direct {v1, p1}, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$csyidz2ck5CBJspNAXRQPt1PKeg;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isBothLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$BRMcEvQHgolGo94b1ZNluXlowJI;

    invoke-direct {v1, p2, p1}, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$BRMcEvQHgolGo94b1ZNluXlowJI;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->provideRotateItem(Ljava/util/List;I)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExpandView:Lcom/android/camera/fragment/top/TopExpendView;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/TopExpendView;->provideRotateItem(Ljava/util/List;I)V

    :cond_4
    return-void
.end method

.method public reInitAlert(Z)V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getHandGestureRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$TxJlqcB3dJUXsjXMijJGUtsSuN4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$TxJlqcB3dJUXsjXMijJGUtsSuN4;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Z)V

    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x78

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x0

    :goto_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p0, p1, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public refreshExtraMenu()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowExtraMenu:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraMenu:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshHistogramStatsView()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->refreshHistogramStatsView()V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xac

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/mi/config/Device;->isSupportedOpticalZoom()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v0, :cond_0

    const/16 v0, 0xb8

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    :cond_0
    return-void
.end method

.method public removeExtraMenu(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    return-void
.end method

.method public reverseExpandTopBar(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopBarAnimationComponent:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->reverse(Z)Z

    move-result p0

    return p0
.end method

.method public rotate()V
    .locals 0

    return-void
.end method

.method public setAiSceneImageLevel(I)V
    .locals 4

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    const/16 p1, 0x17

    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentAiSceneLevel:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAiSceneDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAiSceneShadowDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAiSceneResources:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mAiSceneResources:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigQrCodeTip()Z

    :cond_4
    invoke-static {p1}, Lcom/android/camera/constant/AiSceneModeConstant;->isPopTipRequired(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->configBottomPopupTips(Z)V

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f110021

    goto :goto_0

    :cond_5
    const v0, 0x7f110020

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_6

    if-lez p1, :cond_6

    array-length v1, v0

    if-ge p1, v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f11001f

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setAlertAnim(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setAlertAnim(Z)V

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    :cond_0
    return-void
.end method

.method public setConfigMenuResetWhenRestartmode()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setRecordingTimeState(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setRecordingTimeState(IZ)V

    return-void
.end method

.method public setRecordingTimeState(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setRecordingTimeState(IZ)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setPendingRecordingState(I)V

    :goto_0
    return-void
.end method

.method public setShow(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    :cond_0
    return-void
.end method

.method public setSnapNumValue(I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120158

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSnapStyle:Landroid/text/style/TextAppearanceSpan;

    const/16 v2, 0x21

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSnapNumVisible(ZZ)V
    .locals 1

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->initSnapNumAnimator()V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopTipMarin(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setSnapNumValue(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mMultiSnapNum:Landroid/widget/TextView;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, 0x1f4

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_1
    return-void
.end method

.method public setTipsState(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTipsState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVolumeValue([F)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setAudioMapMoveVolumeValue([F)V

    :cond_0
    return-void
.end method

.method public showConfigMenu()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    return-void
.end method

.method public showDelayNumber(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureNumberAutoHibernationOffset:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopTipMarin(Landroid/view/View;Z)V

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCaptureDelayNumber:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x3b1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->showDelayNumber(I)V

    :cond_1
    return-void
.end method

.method public showDocumentStateButton(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->showDocumentStateButton(I)V

    return-void
.end method

.method public startLiveShotAnimation()V
    .locals 3

    const/16 v0, 0xce

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string v2, "level"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mLiveShotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method

.method public toSlideSwitch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigValueChanged(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExtraAdapter:Lcom/android/camera/fragment/top/ExtraAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    const-string p2, "pref_speech_shutter"

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragment;->mTTSHelper:Lcom/android/camera/tts/TTSHelper;

    invoke-static {p0, p3}, Lcom/android/camera/tts/TTSHelper;->speakingTextInTalkbackMode(Lcom/android/camera/tts/TTSHelper;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    const/16 v0, 0xac

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/mi/config/Device;->isSupportedOpticalZoom()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v0, :cond_0

    const/16 v0, 0xb8

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    :cond_0
    return-void
.end method

.method public varargs updateConfigItem([I)V
    .locals 9

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v6

    array-length v7, p1

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_1

    aget v0, p1, v8

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/data/data/config/TopConfigItem;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(Lcom/android/camera/data/data/config/TopConfigItem;Landroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;Z)Z

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateContentDescription()V
    .locals 2

    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f11005b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateFastmotionProRecordingTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateFastmotionProRecordingTime(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateHistogramStatsData([I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateHistogramStatsData([I)V

    return-void
.end method

.method public updateHistogramStatsData([I[I[I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateHistogramStatsData([I[I[I)V

    return-void
.end method

.method public updateLyingDirectHint(ZZ)V
    .locals 0

    if-nez p2, :cond_0

    iput-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowTopLyingDirectHint:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isExtraMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsShowTopLyingDirectHint:Z

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateLyingDirectHint(Z)V

    return-void
.end method

.method public updateProVideoRecordingSimpleView(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateProVideoRecordingSimpleView(Z)V

    return-void
.end method

.method public updateRGBHistogramSwitched(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    :cond_0
    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateRecordingTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateRecordingTimeStyle(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateRecordingTimeStyle(Z)V

    :cond_0
    return-void
.end method

.method public updateTopAlertLayout()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isTopAlertShowing(Lcom/android/camera/fragment/top/FragmentTopAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateTopAlertLayout()V

    return-void
.end method
