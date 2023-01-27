.class public Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;
.super Lcom/android/camera/fragment/clone/FragmentCloneProcess;
.source "FragmentTimeFreezeProcess.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentTimeFreezeProcess"


# instance fields
.field private mGotoShare:Z

.field private mInRecording:Z

.field private mIsPause:Z

.field private mIsPlaying:Z

.field private mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

.field private mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

.field private mTimeFreezing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mGotoShare:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mInRecording:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->showTimeFreezeButton()V

    return-void
.end method

.method private hideCaptureHint()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideCaptureMessage$0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const-string v1, "FragmentTimeFreezeProcess"

    if-nez v0, :cond_0

    const-string p0, "ignore updateCaptureMessage, fragment not added"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHintPined:Z

    if-eqz v0, :cond_1

    const-string p0, "ignore updateCaptureMessage, hint has been pined"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->hideCaptureHint()V

    return-void
.end method

.method private synthetic lambda$updateCaptureMessage$1(IZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPaused:Z

    const-string v1, "FragmentTimeFreezeProcess"

    if-eqz v0, :cond_0

    const v0, 0x7f11027c

    if-ne p1, v0, :cond_0

    const-string p0, "ignore updateCaptureMessage, paused"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "ignore updateCaptureMessage, fragment not added"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHintPined:Z

    if-eqz v0, :cond_2

    const-string p0, "ignore updateCaptureMessage, hint has been pined"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const v0, 0x7f110281

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHintPined:Z

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess$2;-><init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->updateCaptureHintBackground(Z)V

    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showCaptureHint()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private onTimeFreezeClick()V
    .locals 5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    const-string v1, "FragmentTimeFreezeProcess"

    if-nez v0, :cond_0

    const-string p0, "onTimeFreezeClicked: no clone action"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "onTimeFreezeClicked"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080432

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    const v2, 0x7f110380

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080433

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    const v2, 0x7f110382

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    :goto_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onTimeFreezeClicked()V

    return-void
.end method

.method private pauseVideoPlay()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->pause()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showPlayButton()V

    return-void
.end method

.method private resetTimeFreezeButton()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080432

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    const v1, 0x7f110380

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    :cond_0
    return-void
.end method

.method private resumeVideoPlay()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setClearSurface(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->resume()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hiddenPlayButton()V

    return-void
.end method

.method private showTimeFreezeButton()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->onFilmRatioChanged(ZZ)V

    return-void
.end method

.method private startVideoPlay(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPause:Z

    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/TextureVideoView;->setClearSurface(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/TextureVideoView;->start(J)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hiddenPlayButton()V

    return-void
.end method

.method private stopVideoPlay()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPlaying:Z

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected checkModeValidation()V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xd5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->quit()V

    :cond_0
    return-void
.end method

.method protected enableUseGuideMenu(Z)V
    .locals 4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xa4

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-interface {p0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    new-array v0, v0, [I

    const/16 v1, 0xfb

    aput v1, v0, v3

    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    :cond_0
    return-void
.end method

.method protected getDurationVideoRecording()I
    .locals 0

    const/16 p0, 0x3a98

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfffff9

    return p0
.end method

.method public hideCaptureMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/clone/-$$Lambda$FragmentTimeFreezeProcess$UOLtbHDuhK-1T_CPLik2tzQeLEw;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/clone/-$$Lambda$FragmentTimeFreezeProcess$UOLtbHDuhK-1T_CPLik2tzQeLEw;-><init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected hideShareSheet()Z
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hideShareSheet()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "value_time_freeze_click_play_share_cancel"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method protected initShutterButton(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initShutterButton "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentTimeFreezeProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd5

    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setTargetUiStyle(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->showCirclePaintItem()V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->stopSpeech()V

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a00d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ScrollTextview;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    const v0, 0x7f0a00d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TextureVideoView;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setLoop(Z)V

    invoke-super {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->initView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    new-array p1, v1, [Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    const p1, 0x7f11037f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected isVideoMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$hideCaptureMessage$0$FragmentTimeFreezeProcess()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->lambda$hideCaptureMessage$0()V

    return-void
.end method

.method public synthetic lambda$updateCaptureMessage$1$FragmentTimeFreezeProcess(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->lambda$updateCaptureMessage$1(IZ)V

    return-void
.end method

.method public onBackPress()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->enableUseGuideMenu(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onExitClicked()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->resetToPreview()V

    return-void
.end method

.method protected onClick(Landroid/view/View;Lcom/xiaomi/fenshen/FenShenCam$Mode;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string/jumbo p2, "value_time_freeze_click_play_share"

    invoke-static {p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->hideShareSheet()Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mExitToDummyClone:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mGotoShare:Z

    sget-object p2, Lcom/android/camera/fragment/clone/Status;->SHARE:Lcom/android/camera/fragment/clone/Status;

    iput-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mStatus:Lcom/android/camera/fragment/clone/Status;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->isVideoMode()Z

    move-result v7

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showBackButton(Z)V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/android/camera/Util;->startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Z

    goto :goto_2

    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->onTimeFreezeClick()V

    iget-boolean p0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "value_time_freeze_click_reset"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "value_time_freeze_click_freeze"

    :goto_0
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_2
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPause:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->resumeVideoPlay()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->pauseVideoPlay()V

    :goto_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPause:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mIsPause:Z

    goto :goto_2

    :sswitch_3
    const-string/jumbo p1, "value_time_freeze_click_play_save"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->onSaveButtonClick(Z)V

    goto :goto_3

    :sswitch_4
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showExitConfirm(Z)V

    :goto_2
    move v0, v1

    :goto_3
    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f0a00bb -> :sswitch_4
        0x7f0a00cf -> :sswitch_3
        0x7f0a00d5 -> :sswitch_2
        0x7f0a00d6 -> :sswitch_1
        0x7f0a020a -> :sswitch_0
    .end sparse-switch
.end method

.method public onCountDownFinished()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->onTimeFreezeClick()V

    return-void
.end method

.method public onFilmRatioChanged(ZZ)V
    .locals 7

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070167

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070163

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070164

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    div-int/lit8 v3, v3, 0x2

    add-int v5, v4, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v5, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    sub-int/2addr v2, v3

    if-eqz p1, :cond_0

    add-int/2addr v5, v4

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070730

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mGotoShare:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->onTimeFreezeClick()V

    :cond_3
    return-void
.end method

.method public onFrameAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    new-instance v1, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess$1;-><init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->onPause()V

    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->onTimeFreezeClick()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->stopVideoPlay()V

    return-void
.end method

.method public onReplayPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showPlayButton()V

    return-void
.end method

.method public onReplayResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hiddenPlayButton()V

    return-void
.end method

.method protected onSaveFinish(Lcom/xiaomi/fenshen/FenShenCam$Mode;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->resetTimeFreezeButton()V

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveContentValues:Landroid/content/ContentValues;

    if-eqz p1, :cond_0

    const-string p2, "_data"

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onSnapClick(Lcom/android/camera/protocol/ModeProtocol$CameraAction;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mInRecording:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "value_time_freeze_stop_record"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    :cond_0
    const/16 p0, 0xa

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    return-void
.end method

.method public prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mGotoShare:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hiddenPlayButton()V

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->stopVideoPlay()V

    return-void
.end method

.method public processingFinish()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mInRecording:Z

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0, v1, v0, v0, v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f110037

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1100af

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public processingStart()V
    .locals 6

    invoke-super {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->processingStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mInRecording:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result v1

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getOrientation()I

    move-result v0

    rem-int/lit16 v4, v0, 0xb4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected provideAnimateElement(I)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mGotoShare:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mLandscapeHint:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSaveButton:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected resetToPreview(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->resetTimeFreezeButton()V

    return-void
.end method

.method protected resumeFragment()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mGotoShare:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mSavedPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->startVideoPlay(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->resetTimeFreezeButton()V

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->showTimeFreezeButton()V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v2, 0xd5

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x1a3

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onFragmentResume()V

    :cond_3
    return-void
.end method

.method protected setSnapButtonEnable(ZZ)V
    .locals 3

    const-string v0, "FragmentTimeFreezeProcess"

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mDetectedPersonInPreview:Z

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo p0, "setSnapButtonEnable ignore, is not landScape"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSnapButtonEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-nez p1, :cond_2

    if-eqz p2, :cond_5

    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p1, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_5
    return-void
.end method

.method protected showSaveAndGiveUp(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showBackButton(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->mTimeFreezeButton:Lcom/android/camera/ui/ScrollTextview;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateCaptureMessage(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/clone/-$$Lambda$FragmentTimeFreezeProcess$09HO6h33rCmAxe8hBihf8ESV09s;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/fragment/clone/-$$Lambda$FragmentTimeFreezeProcess$09HO6h33rCmAxe8hBihf8ESV09s;-><init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;IZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCaptureMessage(Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mPaused:Z

    const-string v1, "FragmentTimeFreezeProcess"

    if-eqz v0, :cond_0

    const-string p0, "ignore updateCaptureMessage, paused"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "ignore updateCaptureMessage, fragment not added"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->updateCaptureHintBackground(Z)V

    iget-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showCaptureHint()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->mCaptureHint:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updatePreviewUI()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->resetTimeFreezeButton()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showSaveAndGiveUp(Z)V

    return-void
.end method
