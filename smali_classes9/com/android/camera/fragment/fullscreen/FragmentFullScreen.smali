.class public Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFullScreen.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$FullScreenProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;,
        Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xff6

.field private static final TAG:Ljava/lang/String; = "FullScreen"

.field private static final WAIT_RECORD_SEGMENT_CREATED:I = 0x0

.field private static final WAIT_RECORD_SEGMENT_CREATED_TIME_OUT:I = 0x1388

.field private static final WAIT_RECORD_SEGMENT_ERROR_TIME_OUT:I = 0x1388

.field private static final WAIT_RECORD_SEGMENT_TO_CAPTURE:I = 0x1

.field private static final WAIT_RECORD_SEGMENT_WHEN_ERROR:I = 0x2


# instance fields
.field private mBottomActionView:Landroid/view/ViewGroup;

.field private mBottomLayout:Landroid/view/ViewGroup;

.field private mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field private mCancelProgress:Landroid/widget/ProgressBar;

.field private mCombineListener:Lcom/ss/android/vesdk/VECommonCallback;

.field private mCombineProgress:Landroid/widget/ImageView;

.field private mCombineReady:Z

.field private mConcatListener:Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;

.field private mConcatProgress:Landroid/widget/ProgressBar;

.field private mConcatReady:Z

.field private mErrorListener:Lcom/ss/android/vesdk/VECommonCallback;

.field private mExitDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mFirstFrame:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mIsIntentAction:Z

.field private mIsPlaying:Z

.field private mLiveViewLayout:Landroid/view/View;

.field private mLiveViewStub:Landroid/view/ViewStub;

.field private mPaused:Z

.field private mPendingSaveFinish:Z

.field private mPendingShare:Z

.field private mPendingStartPlay:Z

.field private mPendingTask:Ljava/lang/Runnable;

.field private mPreviewBack:Landroid/widget/ImageView;

.field private mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPreviewCover:Landroid/widget/ImageView;

.field private mPreviewLayout:Landroid/widget/FrameLayout;

.field private mPreviewShare:Landroid/widget/ImageView;

.field private mPreviewStart:Landroid/widget/ImageView;

.field private mPreviewTextureView:Landroid/view/TextureView;

.field private mSaveContentValues:Landroid/content/ContentValues;

.field private mSavedPath:Ljava/lang/String;

.field private mSavedUri:Landroid/net/Uri;

.field private mScreenLightIndicator:Landroid/view/View;

.field private mScreenLightRootView:Landroid/view/View;

.field private mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

.field private mShareCancel:Landroid/view/View;

.field private mShareLayout:Landroid/view/ViewGroup;

.field private mShareProgress:Landroid/widget/ProgressBar;

.field private mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

.field private mTimeView:Landroid/widget/TextView;

.field private mTopLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->runPendingTask()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hasFrame()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1202(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFirstFrame:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startConcatVideoIfNeed()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPaused:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->concatResult(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->onCombineSuccess()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->onCombineError()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    return p1
.end method

.method private animateIn()V
    .locals 0

    return-void
.end method

.method private attempt(Ljava/lang/Runnable;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordState;->getSegmentSize()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingTask:Ljava/lang/Runnable;

    const/4 p0, 0x0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private attemptCaptureFrame()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    const-string v1, "FullScreen"

    if-nez v0, :cond_0

    const-string p0, "mPreviewTextureManager is null~"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "attemptCaptureFrame"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    invoke-virtual {v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->clearRequest()V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->showEmptyView()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordState;->getSegmentSize()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    invoke-virtual {v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->requestCapture()V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startConcatVideoIfNeed()V

    :goto_0
    return-void
.end method

.method private checkAndShare()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startShare()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private concatResult(Landroid/util/Pair;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->onCombineError()V

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingStartPlay:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "concat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "FullScreen"

    invoke-static {v7, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->initCombineListener()V

    new-instance v1, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewTextureView:Landroid/view/TextureView;

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->initCoverView()V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCover:Landroid/widget/ImageView;

    invoke-virtual {v2, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewTextureView:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineListener:Lcom/ss/android/vesdk/VECommonCallback;

    iget-object v6, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mErrorListener:Lcom/ss/android/vesdk/VECommonCallback;

    move-object v1, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->init(Landroid/view/TextureView;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VECommonCallback;Lcom/ss/android/vesdk/VECommonCallback;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->onCombineError()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->hasCaptureRequest()Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, p1

    :goto_0
    new-instance v2, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    iget-object v3, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewTextureView:Landroid/view/TextureView;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Landroid/view/TextureView;)V

    iput-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    if-eqz v1, :cond_4

    const-string p1, "concat finish and capture frame"

    invoke-static {v7, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startCaptureFrame(Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_5

    const-string p1, "concat finish and start preview"

    invoke-static {v7, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startPlay()V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "concat finish and start save"

    invoke-static {v7, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->setProgressBarVisible(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startCombine()V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "concat finish and pending share"

    invoke-static {v7, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startCombine()V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "concat finish ,capture frame & stop play"

    invoke-static {v7, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startCaptureFrame(Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private hasFrame()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFirstFrame:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hideCombineProgress()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private hideCover()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCover:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideShareSheet()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x50

    invoke-direct {v0, p0, v1}, Lcom/android/camera/animation/type/SlideOutOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance p0, Lmiui/view/animation/QuarticEaseInInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/QuarticEaseInInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private initCombineListener()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$7;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$7;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineListener:Lcom/ss/android/vesdk/VECommonCallback;

    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$8;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$8;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mErrorListener:Lcom/ss/android/vesdk/VECommonCallback;

    return-void
.end method

.method private initConcatListener()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$6;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$6;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatListener:Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;

    return-void
.end method

.method private initCoverView()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCover:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCover:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCover:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initHandler()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$3;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initLiveView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTopLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getTopMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getTopBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f0a01fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a01f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    const v0, 0x7f0a020e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a01f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0200

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTimeView:Landroid/widget/TextView;

    const v0, 0x7f0a0202

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideCirclePaintItem()V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    const v0, 0x7f0a0201

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x3ec28f5c

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f100045

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const v0, 0x7f0a01fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    const v0, 0x7f0a0203

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    const v0, 0x7f0a01ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const v0, 0x7f0a020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0a020c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0208

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    const v1, 0x7f0a0478

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0479

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBottomLayout:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBottomLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f333333

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomMargin()I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3e99999a

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    const p1, 0x7f06008a

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method public static synthetic lambda$5JVx8N3k1tp4KdN2UM4xOWpTkhU(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startConcatVideoIfNeed()V

    return-void
.end method

.method public static synthetic lambda$MWdjF9uUy7CYwYtvMFy3C0ryVkw(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->showExitConfirm()V

    return-void
.end method

.method public static synthetic lambda$TmjvqMat5z9xQ6fR6z2yZheJ-ak(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startCombine()V

    return-void
.end method

.method private synthetic lambda$onCombineError$2()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->quitLiveRecordPreview(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCombineSuccess$3()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->quitLiveRecordPreview(Z)V

    return-void
.end method

.method private synthetic lambda$onRecordSegmentCreated$5()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFirstFrame:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    invoke-virtual {v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->requestCapture()V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startConcatVideoIfNeed()V

    return-void
.end method

.method static synthetic lambda$showExitConfirm$1()V
    .locals 2

    const-string v0, "FullScreen"

    const-string/jumbo v1, "showExitConfirm onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$startCaptureFrame$0(Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCover:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->updateCoverView(Landroid/widget/ImageView;)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->pausePlay()V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$startPlay$4()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideCover()V

    return-void
.end method

.method public static synthetic lambda$vd_RctfnbzSOmYPMei35zmCfXRQ(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->runPendingTask()V

    return-void
.end method

.method private onCombineError()V
    .locals 2

    const-string v0, "FullScreen"

    const-string v1, "onCombineError"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$0fpXVCfrp17c2uIW_zEdgbN3-Bo;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$0fpXVCfrp17c2uIW_zEdgbN3-Bo;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onCombineSuccess()V
    .locals 2

    const-string v0, "FullScreen"

    const-string v1, "combineSuccess"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineReady:Z

    iget-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPaused:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    if-eqz v1, :cond_1

    const-string v1, "combineSuccess and share"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/LiveModule;

    invoke-virtual {p0}, Lcom/android/camera/module/LiveModule;->startSaveToLocal()V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    if-eqz v1, :cond_2

    const-string v1, "combineSuccess and finish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$Q65f8p8GCepXYDphVc2_yGwrcIA;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$Q65f8p8GCepXYDphVc2_yGwrcIA;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string p0, "combineSuccess and skip"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onPlayCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$9;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$9;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private pausePlay()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xd1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->pausePlay()V

    return-void
.end method

.method private resumePlay()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xd1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->resumePlay()V

    return-void
.end method

.method private runPendingTask()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingTask:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private setProgressBarVisible(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

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

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideCombineProgress()V

    :goto_0
    return-void
.end method

.method private shareMore()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedPath:Ljava/lang/String;

    const v3, 0x7f110413

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, p0, v3}, Lcom/android/camera/Util;->shareMediaToMore(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/CharSequence;Z)Z

    return-void
.end method

.method private showCover()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCover:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showEmptyView()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->initCoverView()V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->showCover()V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private showExitConfirm()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "exit"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v0, 0x7f110411

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f110410

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$4;

    invoke-direct {v5, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$4;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v0, 0x7f110858

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$PmXT3e52bElc2ImixjYAidzGMEw;->INSTANCE:Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$PmXT3e52bElc2ImixjYAidzGMEw;

    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$5;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$5;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showShareSheet()V
    .locals 14

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->getShareMediaIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "FullScreen"

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    array-length v4, v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v4, :cond_2

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_1
    if-ge v9, v4, :cond_1

    sget-object v6, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    aget-object v6, v6, v9

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v5, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_ICON:[I

    aget v12, v5, v9

    sget-object v5, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_NAME:[I

    aget v13, v5, v9

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "no default share entry"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v0, v3

    goto :goto_4

    :cond_5
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget v0, v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    if-le v0, v3, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x2

    if-ge v0, v5, :cond_6

    const-string v0, "not match default share strategy"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v0, v6

    :goto_4
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->shareMore()V

    return-void

    :cond_7
    new-instance v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    add-int/lit8 v8, v4, 0x1

    const v11, 0x7f0802da

    const v12, 0x7f11008c

    const-string v9, "com.android.camera"

    const-string v10, "more"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$10;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$10;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070340

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x40b00000    # 5.5f

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->getItemCount()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_8

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->setShareInfoList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_6

    :cond_9
    :goto_5
    new-instance v4, Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-direct {v4, v2, p0, v3}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;I)V

    iput-object v4, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    new-instance v2, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/Space;->setMinimumWidth(I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addHeader(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Space;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/Space;->setMinimumWidth(I)V

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/RecyclerAdapterWrapper;->addFooter(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_6
    invoke-static {}, Lcom/android/camera/Display;->getNavigationBarHeight()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getNavigationBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_a
    new-instance v0, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x50

    invoke-direct {v0, p0, v1}, Lcom/android/camera/animation/type/SlideInOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance p0, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {p0}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void

    :cond_b
    :goto_7
    const-string p0, "no IntentActivities"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startCaptureFrame(Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    new-instance v1, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$MC3VlSxKkIsKz3jGWPFYJpDT9_8;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$MC3VlSxKkIsKz3jGWPFYJpDT9_8;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->requestUpdateCallbackOnce(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;)V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->startPlay()V

    return-void
.end method

.method private startCombine()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineReady:Z

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSaveContentValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xd1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineListener:Lcom/ss/android/vesdk/VECommonCallback;

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mErrorListener:Lcom/ss/android/vesdk/VECommonCallback;

    invoke-interface {v1, v0, v2, p0}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->combineVideoAudio(Ljava/lang/String;Lcom/ss/android/vesdk/VECommonCallback;Lcom/ss/android/vesdk/VECommonCallback;)V

    :cond_0
    return-void
.end method

.method private startConcatVideoIfNeed()V
    .locals 4

    const-string v0, "FullScreen"

    const-string/jumbo v1, "startConcatVideo"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->initConcatListener()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatListener:Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;->onRecordConcat(Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "concat failed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/Pair;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->concatResult(Landroid/util/Pair;)V

    :cond_1
    return-void
.end method

.method private startPlay()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsPlaying:Z

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideCover()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    new-instance v2, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$47nh8bBWhqe2gEcOuiJHhRbMBgE;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$47nh8bBWhqe2gEcOuiJHhRbMBgE;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->requestUpdateCallbackOnce(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;)V

    :goto_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->startPlay()V

    return-void
.end method

.method private startShare()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->showShareSheet()V

    return-void
.end method

.method private updateCoverView(Landroid/widget/ImageView;)V
    .locals 2

    const-string v0, "FullScreen"

    if-nez p1, :cond_0

    const-string p0, "cover view is null~"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hasFrame()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFirstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const-string p0, "frame didn\'t created~"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff6

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0071

    return p0
.end method

.method public getSaveContentValues()Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSaveContentValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method public hideScreenLight()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "FullScreen"

    const-string v2, "hideScreenLight"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$2;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0352

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    const v0, 0x7f0a0351

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    const v0, 0x7f0a0205

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method public isLiveRecordPreviewShown()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-eqz p0, :cond_0

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

.method public isLiveRecordSaving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

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

.method public synthetic lambda$onCombineError$2$FragmentFullScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->lambda$onCombineError$2()V

    return-void
.end method

.method public synthetic lambda$onCombineSuccess$3$FragmentFullScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->lambda$onCombineSuccess$3()V

    return-void
.end method

.method public synthetic lambda$onRecordSegmentCreated$5$FragmentFullScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->lambda$onRecordSegmentCreated$5()V

    return-void
.end method

.method public synthetic lambda$startCaptureFrame$0$FragmentFullScreen(Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->lambda$startCaptureFrame$0(Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;)V

    return-void
.end method

.method public synthetic lambda$startPlay$4$FragmentFullScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->lambda$startPlay$4()V

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineReady:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->onCombineSuccess()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideShareSheet()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->showExitConfirm()V

    :goto_0
    return v1

    :cond_2
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-string v4, "FullScreen"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "onClick: live_preview_bottom_action"

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "onClick: live_share_item"

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideShareSheet()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "live_preview_shareTo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    const-string v1, "more"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->shareMore()V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedPath:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :sswitch_2
    const-string p1, "onClick: live_share_cancel"

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideShareSheet()V

    goto/16 :goto_0

    :sswitch_3
    const-string p1, "onClick: live_preview_share"

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "concat not finished, skip share~"

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p1, "live_share"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_7

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    if-nez p1, :cond_3

    const-string p1, "concat not finished, show share progress and wait to share"

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$5JVx8N3k1tp4KdN2UM4xOWpTkhU;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$5JVx8N3k1tp4KdN2UM4xOWpTkhU;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->attempt(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->pausePlay()V

    new-instance p1, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$TmjvqMat5z9xQ6fR6z2yZheJ-ak;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$TmjvqMat5z9xQ6fR6z2yZheJ-ak;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->attempt(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :sswitch_4
    const-string p1, "onClick: live_preview_save"

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "live_save"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackLiveClick(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->onCombineSuccess()V

    goto/16 :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    if-nez p1, :cond_5

    const-string p1, "concat not finished, show save progress and wait to save"

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->setProgressBarVisible(I)V

    new-instance p1, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$5JVx8N3k1tp4KdN2UM4xOWpTkhU;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$5JVx8N3k1tp4KdN2UM4xOWpTkhU;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->attempt(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineReady:Z

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->pausePlay()V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->setProgressBarVisible(I)V

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    new-instance p1, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$TmjvqMat5z9xQ6fR6z2yZheJ-ak;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$TmjvqMat5z9xQ6fR6z2yZheJ-ak;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->attempt(Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: live_preview_play, mConcatReady="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    if-nez p1, :cond_6

    const-string p1, "concat not finished, show play progress"

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance p1, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$5JVx8N3k1tp4KdN2UM4xOWpTkhU;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$5JVx8N3k1tp4KdN2UM4xOWpTkhU;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->attempt(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideShareSheet()V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startPlay()V

    goto :goto_0

    :sswitch_6
    const-string p1, "onClick: live_preview_layout"

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->pausePlay()V

    goto :goto_0

    :sswitch_7
    const-string p1, "onClick: live_preview_back"

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$MWdjF9uUy7CYwYtvMFy3C0ryVkw;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$MWdjF9uUy7CYwYtvMFy3C0ryVkw;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->attempt(Ljava/lang/Runnable;)V

    :cond_7
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a01fd -> :sswitch_7
        0x7f0a01fe -> :sswitch_6
        0x7f0a01ff -> :sswitch_5
        0x7f0a0201 -> :sswitch_4
        0x7f0a0202 -> :sswitch_4
        0x7f0a0203 -> :sswitch_3
        0x7f0a0208 -> :sswitch_2
        0x7f0a020a -> :sswitch_1
        0x7f0a0478 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public onLiveSaveToLocalFinished(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedPath:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPaused:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startShare()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-string v0, "FullScreen"

    const-string v1, "onPause + "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingTask:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideCombineProgress()V

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPaused:Z

    iput-boolean v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    iput-boolean v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineReady:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->pausePlay()V

    const-string p0, "onPause - "

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecordSegmentCreated()V
    .locals 2

    const-string v0, "FullScreen"

    const-string v1, "onRecordSegmentCreated"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$vd_RctfnbzSOmYPMei35zmCfXRQ;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$vd_RctfnbzSOmYPMei35zmCfXRQ;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$TshdhAaI1fcEDIhq5ZkVRlKOVJk;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$TshdhAaI1fcEDIhq5ZkVRlKOVJk;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingStartPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mTextureListener + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreen"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideCombineProgress()V

    iput-boolean v3, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPaused:Z

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hasFrame()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    invoke-virtual {v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->clearRequest()V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCover:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->updateCoverView(Landroid/widget/ImageView;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->showCover()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->attemptCaptureFrame()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingStartPlay:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->showEmptyView()V

    new-instance v0, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$5JVx8N3k1tp4KdN2UM4xOWpTkhU;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/fullscreen/-$$Lambda$FragmentFullScreen$5JVx8N3k1tp4KdN2UM4xOWpTkhU;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->attempt(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    const-string p0, "onResume - "

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideScreenLight()V

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

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
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

    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public quitLiveRecordPreview(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quitLiveRecordPreview "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreen"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideCombineProgress()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xa1

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_3

    const-string p0, "concat error, action null"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;->onDestory()V

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineListener:Lcom/ss/android/vesdk/VECommonCallback;

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mErrorListener:Lcom/ss/android/vesdk/VECommonCallback;

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCover:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCover:Landroid/widget/ImageView;

    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFirstFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mFirstFrame:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    if-eqz v0, :cond_8

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTextureListener:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    :cond_8
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc4

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setScreenLightColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public showScreenLight()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "FullScreen"

    const-string/jumbo v2, "showScreenLight"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    new-instance v2, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$1;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$1;-><init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mScreenLightRootView:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p0, 0x64

    invoke-virtual {v0, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    const/4 p0, 0x1

    return p0
.end method

.method public startLiveRecordPreview(Landroid/content/ContentValues;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSavedUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mSaveContentValues:Landroid/content/ContentValues;

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->initHandler()V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewStub:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->initLiveView(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mIsIntentAction:Z

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mLiveViewLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->hideCombineProgress()V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-direct {p1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v2, 0xc9

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;

    iget-object v2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTimeView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->getTimeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mConcatReady:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCombineReady:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingShare:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingSaveFinish:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mPendingStartPlay:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->startConcatVideoIfNeed()V

    return-void
.end method

.method public startLiveRecordSaving()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->performClick()Z

    :cond_1
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xc4

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
