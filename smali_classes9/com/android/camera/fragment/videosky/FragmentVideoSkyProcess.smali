.class public Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentVideoSkyProcess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$VideoSkyProcess;
.implements Lcom/android/camera/ui/CameraSnapView$SnapListener;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final STATUS_CAPTURING:I = 0x1

.field private static final STATUS_PREPARE:I = 0x0

.field private static final STATUS_SAVE:I = 0x3

.field private static final STATUS_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FragmentVideoSkyProcess"


# instance fields
.field private mBottomActionView:Landroid/view/ViewGroup;

.field private mBottomLayout:Landroid/view/ViewGroup;

.field private mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field private mEffectMediaPlayer:Lcom/xiaomi/magicvideosky/EffectMediaPlayer;

.field private mExitDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mGiveUpToPreview:Landroid/widget/ImageView;

.field private mIsPause:Z

.field private mIsPendingShowComposeResult:Z

.field private mIsPlaying:Z

.field private mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

.field private mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

.field private mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

.field private mPaused:Z

.field private mPendingShare:Z

.field private mPlayButton:Landroid/widget/ImageView;

.field private mPlaySurfaceView:Landroid/view/SurfaceView;

.field private mRootView:Landroid/view/View;

.field private mSaveAndShare:Landroid/widget/ImageView;

.field private mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

.field private mSaveContentValues:Landroid/content/ContentValues;

.field private mSavedPath:Ljava/lang/String;

.field private mSavedUri:Landroid/net/Uri;

.field private mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

.field private mShareDialog:Landroid/view/View;

.field private mShareMessage:Landroid/widget/TextView;

.field private mShareProgress:Landroid/widget/ProgressBar;

.field private mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSnapViewProgress:Landroid/widget/ImageView;

.field private mStatus:I

.field private mStopCapture:Landroid/widget/ImageView;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method private alphaAnimateIn(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private alphaAnimateOut(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private checkAndShare()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSavedPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->showShareSheet()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hideExitDialog()Z
    .locals 2

    const-string v0, "FragmentVideoSkyProcess"

    const-string v1, "hideExitDialog"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->setSnapButtonEnable(ZZ)V

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hideShareSheet()Z
    .locals 2

    const-string v0, "FragmentVideoSkyProcess"

    const-string v1, "hideShareSheet"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareDialog:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initShutterButton()V
    .locals 2

    const-string v0, "FragmentVideoSkyProcess"

    const-string v1, "initShutterButton"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setTargetUiStyle(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->showCirclePaintItem()V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->stopSpeech()V

    return-void
.end method

.method static synthetic lambda$showExitConfirm$0()V
    .locals 2

    const-string v0, "FragmentVideoSkyProcess"

    const-string/jumbo v1, "showExitConfirm onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onSaveButtonClick(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSavedPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->prepare()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$VideoSkyAction;

    const-string v1, "FragmentVideoSkyProcess"

    if-nez v0, :cond_1

    const-string p0, "onSaveButtonClick: no clone action"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "onSaveButtonClick"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->setProgressBarVisible(Z)V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mEffectMediaPlayer:Lcom/xiaomi/magicvideosky/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/magicvideosky/EffectMediaPlayer;->StopPreView()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyAction;->onSaveClicked()V

    return-void
.end method

.method private pauseVideoPlay()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mEffectMediaPlayer:Lcom/xiaomi/magicvideosky/EffectMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/magicvideosky/EffectMediaPlayer;->PausePreView()V

    :cond_0
    return-void
.end method

.method private prepareEffectGraph()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getVideoSkySegmentData()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    invoke-interface {v4}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaEffectGraph;->DestructMediaEffectGraph()V

    :cond_1
    new-instance v0, Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    invoke-direct {v0}, Lcom/xiaomi/magicvideosky/MediaEffectGraph;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/MediaEffectGraph;->ConstructMediaEffectGraph()V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/magicvideosky/MediaEffectGraph;->AddSourcesAndEffectBySourcesPath([Ljava/lang/String;[F)V

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/magicvideosky/MediaEffectGraph;->AddAudioTrack(Ljava/lang/String;Z)J

    return-void
.end method

.method private resumeVideoPlay()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mEffectMediaPlayer:Lcom/xiaomi/magicvideosky/EffectMediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/magicvideosky/EffectMediaPlayer;->ResumePreView()Z

    :cond_0
    return-void
.end method

.method private setProgressBarVisible(Z)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setSnapButtonEnable(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSnapButtonEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentVideoSkyProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private showExitConfirm()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v0, 0x7f110411

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f110410

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$2;

    invoke-direct {v5, p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$2;-><init>(Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v0, 0x7f110858

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/camera/fragment/videosky/-$$Lambda$FragmentVideoSkyProcess$fYlKylvH6gmCP3Oa7uUExNcPJCk;->INSTANCE:Lcom/android/camera/fragment/videosky/-$$Lambda$FragmentVideoSkyProcess$fYlKylvH6gmCP3Oa7uUExNcPJCk;

    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$3;-><init>(Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showShareSheet()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPendingShare:Z

    iget-boolean v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSavedUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSavedPath:Ljava/lang/String;

    const v3, 0x7f110413

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, p0, v3}, Lcom/android/camera/Util;->shareMediaToMore(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/CharSequence;Z)Z

    return-void
.end method

.method private startVideoPlay()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    const-string p0, "FragmentVideoSkyProcess"

    const-string/jumbo v0, "startVideoPlay failed, mSurfaceHolder not available"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlaySurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->prepareEffectGraph()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPlaying:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPause:Z

    new-instance v1, Lcom/xiaomi/magicvideosky/EffectMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mMediaEffectGraph:Lcom/xiaomi/magicvideosky/MediaEffectGraph;

    invoke-direct {v1, v2}, Lcom/xiaomi/magicvideosky/EffectMediaPlayer;-><init>(Lcom/xiaomi/magicvideosky/MediaEffectGraph;)V

    iput-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mEffectMediaPlayer:Lcom/xiaomi/magicvideosky/EffectMediaPlayer;

    invoke-virtual {v1}, Lcom/xiaomi/magicvideosky/EffectMediaPlayer;->ConstructMediaPlayer()Z

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mEffectMediaPlayer:Lcom/xiaomi/magicvideosky/EffectMediaPlayer;

    new-instance v2, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$1;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess$1;-><init>(Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/magicvideosky/EffectMediaPlayer;->SetPlayerNotify(Lcom/xiaomi/magicvideosky/EffectNotifier;)V

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mEffectMediaPlayer:Lcom/xiaomi/magicvideosky/EffectMediaPlayer;

    iget-object v2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/magicvideosky/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mEffectMediaPlayer:Lcom/xiaomi/magicvideosky/EffectMediaPlayer;

    sget-object v2, Lcom/xiaomi/magicvideosky/EffectMediaPlayer$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/magicvideosky/EffectMediaPlayer$SurfaceGravity;

    const/16 v3, 0x438

    const/16 v4, 0x780

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaomi/magicvideosky/EffectMediaPlayer;->setGravity(Lcom/xiaomi/magicvideosky/EffectMediaPlayer$SurfaceGravity;II)V

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mEffectMediaPlayer:Lcom/xiaomi/magicvideosky/EffectMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/xiaomi/magicvideosky/EffectMediaPlayer;->EnableUserAdjustRotatePlay(Z)V

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mEffectMediaPlayer:Lcom/xiaomi/magicvideosky/EffectMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/xiaomi/magicvideosky/EffectMediaPlayer;->SetGraphLoop(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mEffectMediaPlayer:Lcom/xiaomi/magicvideosky/EffectMediaPlayer;

    invoke-virtual {p0}, Lcom/xiaomi/magicvideosky/EffectMediaPlayer;->StartPreView()V

    return-void
.end method

.method private stopVideoPlay()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mEffectMediaPlayer:Lcom/xiaomi/magicvideosky/EffectMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/magicvideosky/EffectMediaPlayer;->StopPreView()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlaySurfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public canSnap()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xffffff0

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00ac

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 8

    const-string v0, "FragmentVideoSkyProcess"

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mRootView:Landroid/view/View;

    const v0, 0x7f0a011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    const v0, 0x7f0a011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    const v0, 0x7f0a0119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveAndShare:Landroid/widget/ImageView;

    const v0, 0x7f0a011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStopCapture:Landroid/widget/ImageView;

    const v0, 0x7f0a011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a048e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareDialog:Landroid/view/View;

    const v1, 0x7f0a048f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareDialog:Landroid/view/View;

    const v1, 0x7f0a0491

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareDialog:Landroid/view/View;

    const v2, 0x7f0a0492

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    const v0, 0x7f0a0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlayButton:Landroid/widget/ImageView;

    const v0, 0x7f0a0448

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlaySurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlaySurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlaySurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v6

    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    sub-int/2addr v4, v6

    const/4 v5, 0x2

    div-int/2addr v4, v5

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v6, v6

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v6, v6

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveAndShare:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v6, v6

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v6, v6

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStopCapture:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v6, v6

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareDialog:Landroid/view/View;

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v6, v6

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlayButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v6, v6

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStopCapture:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v4, v2, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v6, v4, v1

    iget-object v6, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v6, v4, v0

    iget-object v6, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object v6, v4, v5

    iget-object v6, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlayButton:Landroid/widget/ImageView;

    const/4 v7, 0x3

    aput-object v6, v4, v7

    invoke-static {v4}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    new-array v4, v0, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v6, v4, v1

    invoke-static {v4}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    const v4, 0x7f0a0478

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mBottomActionView:Landroid/view/ViewGroup;

    const v4, 0x7f0a0479

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mBottomLayout:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mBottomLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v2

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignBottom()I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignHorizontal()I

    move-result p1

    new-array v2, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v0, v2, v5

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3f333333

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomMargin()I

    move-result p1

    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3e99999a

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getThinAlignHorizontal()I

    move-result p1

    new-array v3, v0, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v4, v3, v5

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    new-array p1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    aput-object v2, p1, v1

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveAndShare:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStopCapture:Landroid/widget/ImageView;

    aput-object v1, p1, v5

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v1, p1, v7

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xd7

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->quit()V

    :cond_2
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->hideExitDialog()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->hideShareSheet()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed mStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentVideoSkyProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStatus:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->showExitConfirm()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "value_dolly_zoom_exit_preview"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomClick(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->resetToPreview(Z)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const-string v1, "FragmentVideoSkyProcess"

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0a020a

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    :cond_1
    const-string p0, "ignore onClick, dialog show"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPause:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->pauseVideoPlay()V

    :cond_3
    iget-boolean p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPause:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPause:Z

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->hideShareSheet()Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSavedUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSavedPath:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Z

    goto :goto_0

    :sswitch_2
    iget-boolean p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPendingShowComposeResult:Z

    if-eqz p1, :cond_4

    const-string p0, "ignore stop capture"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->stopCaptureToPreviewResult(Z)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo p1, "value_dolly_zoom_click_play_save"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomClick(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->onSaveButtonClick(Z)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo p1, "value_dolly_zoom_click_play_share"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDollyZoomClick(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_6

    iput-boolean v3, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPendingShare:Z

    invoke-direct {p0, v3}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->onSaveButtonClick(Z)V

    goto :goto_0

    :sswitch_5
    iget-boolean p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPause:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->resumeVideoPlay()V

    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPause:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPause:Z

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->showExitConfirm()V

    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore onClick, progress show "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0115 -> :sswitch_6
        0x7f0a0118 -> :sswitch_5
        0x7f0a0119 -> :sswitch_4
        0x7f0a011a -> :sswitch_3
        0x7f0a011e -> :sswitch_2
        0x7f0a020a -> :sswitch_1
        0x7f0a0448 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "FragmentVideoSkyProcess"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "FragmentVideoSkyProcess"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPaused:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->hideExitDialog()Z

    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->hideShareSheet()Z

    return-void
.end method

.method public onPreviewPrepare(Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public onResume()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume mStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentVideoSkyProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPaused:Z

    iget v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->prepare()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x2a6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$VideoSkyAction;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyAction;->onFragmentResume()V

    :cond_1
    return-void
.end method

.method public onSaveFinish(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveFinish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentVideoSkyProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSavedUri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveContentValues:Landroid/content/ContentValues;

    if-eqz p1, :cond_0

    const-string v0, "_data"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSavedPath:Ljava/lang/String;

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPendingShare:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->showShareSheet()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->prepare()V

    return-void
.end method

.method public onSnapClick()V
    .locals 3

    const-string v0, "FragmentVideoSkyProcess"

    const-string v1, "onSnapClick"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSnapViewProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v1, :cond_1

    const-string p0, "onSnapClick ignore click case 2"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Camera;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lcom/android/camera/module/Module;->isFrameAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "onSnapClick ignore click case 3"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "onSnapClick performClick mSaveButton"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPendingShowComposeResult:Z

    if-eqz v1, :cond_5

    const-string p0, "onSnapClick ignore click case 4"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xd7

    if-eq p0, v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 p0, 0xa

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    :goto_0
    return-void

    :cond_8
    :goto_1
    const-string p0, "onSnapClick ignore click case 1"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSnapLongPress()V
    .locals 0

    return-void
.end method

.method public onSnapLongPressCancelIn()V
    .locals 0

    return-void
.end method

.method public onSnapLongPressCancelOut()V
    .locals 0

    return-void
.end method

.method public onSnapPrepare()V
    .locals 0

    return-void
.end method

.method public onTrackSnapMissTaken(J)V
    .locals 0

    return-void
.end method

.method public onTrackSnapTaken(J)V
    .locals 0

    return-void
.end method

.method public prepare()V
    .locals 4

    const-string v0, "FragmentVideoSkyProcess"

    const-string v1, "prepare E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSavedUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSavedPath:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPendingShare:Z

    iget-object v2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0xd7

    iput v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->initShutterButton()V

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->setProgressBarVisible(Z)V

    iget-object v2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStopCapture:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPendingShowComposeResult:Z

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->setSnapButtonEnable(ZZ)V

    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->stopVideoPlay()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    :cond_0
    iput v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStatus:I

    const-string p0, "prepare X "

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processingFinish()V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    invoke-static {v1, v0, v1, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f110037

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1100af

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public processingPrepare()V
    .locals 3

    const-string v0, "FragmentVideoSkyProcess"

    const-string v1, "processingPrepare"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public processingStart()V
    .locals 6

    const-string v0, "FragmentVideoSkyProcess"

    const-string v1, "processingStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStatus:I

    if-eqz v1, :cond_0

    const-string v1, "processingStart failed because current status not STATUS_PREPARE"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1100b5

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setSpecificProgress(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlaySurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getOrientation()I

    move-result v0

    rem-int/lit16 v3, v0, 0xb4

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int v5, v4, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlaySurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlaySurfaceView:Landroid/view/SurfaceView;

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlaySurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mPlaySurfaceView:Landroid/view/SurfaceView;

    int-to-float v0, v0

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStatus:I

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iput p3, p0, Lcom/android/camera/fragment/BaseFragment;->mResetType:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "provideAnimateElement mCurrentMode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mIsPendingShowComposeResult "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPendingShowComposeResult:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentVideoSkyProcess"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p3, 0xd7

    if-ne p1, p3, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPendingShowComposeResult:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPendingShowComposeResult:Z

    const-string p1, "provideAnimateElement restore ui"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->prepare()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa1

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ignore provideRotateItem newDegree "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentVideoSkyProcess"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 2

    const-string v0, "FragmentVideoSkyProcess"

    const-string v1, "quit"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mRootView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x2a7

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public resetToPreview(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetToPreview toModeSelect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentVideoSkyProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez p0, :cond_1

    const-string p0, "resetToPreview error, action null"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :goto_0
    return-void
.end method

.method public showSaveAndGiveUp()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPendingShowComposeResult:Z

    const-string v1, "FragmentVideoSkyProcess"

    if-nez v0, :cond_0

    const-string p0, "ignore showSaveAndGiveUp"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStatus:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const-string/jumbo p0, "showSaveAndGiveUp ignore, not stop"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "showSaveAndGiveUp"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStatus:I

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideCirclePaintItem()V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x3ec28f5c

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f100045

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStopCapture:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->setProgressBarVisible(Z)V

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSaveAndShare:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->alphaAnimateIn(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mGiveUpToPreview:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->alphaAnimateIn(Landroid/view/View;)V

    iput-boolean v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPendingShowComposeResult:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->setSnapButtonEnable(ZZ)V

    invoke-direct {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->startVideoPlay()V

    return-void
.end method

.method public stopCaptureToPreviewResult(Z)V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x2a6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$VideoSkyAction;

    const-string v0, "FragmentVideoSkyProcess"

    if-nez p1, :cond_0

    const-string/jumbo p0, "stopCaptureToPreviewResult videoSkyAction is null"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPendingShowComposeResult:Z

    if-eqz v1, :cond_1

    const-string/jumbo p0, "stopCaptureToPreviewResult ignore, pending show composeResult"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const-string/jumbo p0, "stopCaptureToPreviewResult ignore, not capturing"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v0, "stopCaptureToPreviewResult"

    invoke-static {v0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mStatus:I

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyAction;->onStopClicked()V

    iput-boolean v2, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mIsPendingShowComposeResult:Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->showSaveAndGiveUp()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->showFoldTips(Landroid/app/Activity;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "surfaceChanged mSurfaceHolder="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentVideoSkyProcess"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "surfaceCreated mSurfaceHolder="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentVideoSkyProcess"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "FragmentVideoSkyProcess"

    const-string/jumbo p1, "surfaceDestroyed"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x2a7

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
