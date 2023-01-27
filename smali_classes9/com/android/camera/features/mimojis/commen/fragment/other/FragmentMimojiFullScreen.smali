.class public Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;
.super Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;
.source "FragmentMimojiFullScreen.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FRAGMENT_INFO:I = 0xfff3


# instance fields
.field private isVideoSaved:Z

.field private mAlertTopHintHideRunnable:Ljava/lang/Runnable;

.field private mBottomActionView:Landroid/view/ViewGroup;

.field private mBottomLayout:Landroid/view/ViewGroup;

.field private mBottomTimbreLayout:Landroid/view/ViewGroup;

.field private mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field private mCancelProgress:Landroid/widget/ProgressBar;

.field private mCombineProgress:Landroid/widget/ImageView;

.field private mConcatProgress:Landroid/widget/ProgressBar;

.field private mExitDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

.field private mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

.field private mHandler:Landroid/os/Handler;

.field private mIsOnShare:Z

.field private mMImojiViewLayout:Landroid/view/View;

.field private mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

.field private mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

.field private mMimojiViewStub:Landroid/view/ViewStub;

.field private mPreviewBack:Landroid/widget/ImageView;

.field private mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPreviewCoverBitmap:Landroid/graphics/Bitmap;

.field private mPreviewCoverView:Landroid/widget/ImageView;

.field private mPreviewLayout:Landroid/widget/FrameLayout;

.field private mPreviewShare:Landroid/widget/ImageView;

.field private mPreviewStart:Landroid/widget/ImageView;

.field private mPreviewTextureView:Lcom/android/camera/ui/TextureVideoView;

.field private mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

.field private mSaveUri:Landroid/net/Uri;

.field private mSavedPath:Ljava/lang/String;

.field private mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

.field private mShareCancel:Landroid/view/View;

.field private mShareLayout:Landroid/view/ViewGroup;

.field private mShareProgress:Landroid/widget/ProgressBar;

.field private mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTimeView:Landroid/widget/TextView;

.field private mTopLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$N0yS1tnzxeLDGL5gPeNIH2zIa0o;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$N0yS1tnzxeLDGL5gPeNIH2zIa0o;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mAlertTopHintHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method private adjustViewBackground()V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0800f3

    const/high16 v3, -0x1000000

    const v4, 0x7f07005f

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const v2, 0x7f0800f4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getTopBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/android/camera/Display;->getTopMargin()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTopLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private alertTintColor()I
    .locals 1

    invoke-static {}, Lcom/android/camera/customization/TintColor;->isYellowTintColor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060311

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private checkAndShare()Z
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mIsOnShare:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MIMOJI"

    const-string v4, "mp4"

    invoke-static {v3, v4}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/android/camera/module/impl/component/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-interface {v3}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSaveUri:Landroid/net/Uri;

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->isVideoSaved:Z

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSaveUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    const v5, 0x7f11083d

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, v4, p0, v0}, Lcom/android/camera/Util;->shareMediaToMore(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/CharSequence;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method private getFragmentMiMoji()Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getFragmentMiMoji(): fragment is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getFragmentMiMoji(): fragment is not added yet"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    return-object p0
.end method

.method private getMimojiPara()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-object v0, p0, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    aget-object p0, p0, v0

    goto :goto_1

    :cond_2
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-object p0, p0, v0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, " "

    :goto_1
    const-string v0, "cartoon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "human"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "person"

    goto :goto_2

    :cond_5
    const-string v0, "custom"

    :goto_2
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

    :cond_6
    :goto_3
    const-string p0, "null"

    return-object p0
.end method

.method private getShareIntent()Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-interface {v2}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/camera/Util;->getShareMediaIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private hideShareSheet()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/animation/type/SlideOutOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

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

.method private hideTimbreLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiPanelState(I)V

    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    :cond_0
    return-void
.end method

.method private initMimojiView(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f0a01fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0184

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomTimbreLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a040f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TextureVideoView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTextureView:Lcom/android/camera/ui/TextureVideoView;

    const v0, 0x7f0a009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    const v0, 0x7f0a0182

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a01bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverView:Landroid/widget/ImageView;

    const v0, 0x7f0a0401

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    const v0, 0x7f0a01f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    const v0, 0x7f0a020e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a01f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0200

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTimeView:Landroid/widget/TextView;

    const v0, 0x7f0a0202

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraSnapView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideCirclePaintItem()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->hideRoundPaintItem()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    const v0, 0x7f0a0201

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a01fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    const v0, 0x7f0a0203

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    const v0, 0x7f0a01ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const v0, 0x7f0a020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0a020c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0a0208

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTopLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getTopMargin()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getTopBarHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTopLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x3

    new-array v2, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    new-array v2, v4, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    invoke-static {v4}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    const v3, 0x7f0a0478

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    const v3, 0x7f0a0479

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomLayout:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignBottom()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignHorizontal()I

    move-result p1

    new-array v0, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    aput-object v2, v0, v4

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v0, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v1, v0, v4

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3f333333

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomMargin()I

    move-result p1

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3e99999a

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getThinAlignHorizontal()I

    move-result p1

    new-array v2, v5, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v2, v5, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v2, p1, v1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    aput-object v1, p1, v4

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v1, p1, v5

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v1, p1, v0

    invoke-virtual {p0, v4, p1}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomActionView:Landroid/view/ViewGroup;

    const p1, 0x7f06008a

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method private synthetic lambda$concatResult$1(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreview()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomTimbreLayout:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTextureView:Lcom/android/camera/ui/TextureVideoView;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-static {p1, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getCurrentMimojiTimbreInfo()Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    goto :goto_2

    :cond_4
    const v0, -0x141415

    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfc

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTextureView:Lcom/android/camera/ui/TextureVideoView;

    invoke-interface {p1, v0, p2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->init(Lcom/android/camera/ui/TextureVideoView;Ljava/lang/String;)Z

    move-result v2

    :cond_6
    if-eqz v2, :cond_7

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->startPlay()V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->showFoldTips(Landroid/app/Activity;)Lio/reactivex/disposables/Disposable;

    return-void

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->alertTop(IIJ)V

    return-void
.end method

.method private synthetic lambda$onCombineError$4()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->quitMimojiRecordPreview()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xd4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCombineSuccess$5()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->quitMimojiRecordPreview()V

    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpRecordVideo(II)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showExitConfirm$2()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showExitConfirm onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "mimoji_play_exit"

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->deleteMimojiCache(I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    return-void
.end method

.method private synthetic lambda$showExitConfirm$3()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "showExitConfirm onClick negative"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$startCombine$6()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startCombine()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    const-string v1, "mimoji_normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    const-string v1, "mimoji_deal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MIMOJI"

    const-string v2, "mp4"

    invoke-static {v1, v2}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/camera/module/impl/component/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineSuccess([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    :goto_0
    return-void
.end method

.method private onPreviewResume()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mIsOnShare:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mIsOnShare:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->resumePlay()V

    :cond_1
    :goto_0
    return-void
.end method

.method private pausePlay()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mimoji void resumePlay[]"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xfc

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->pausePlay()Z

    return-void
.end method

.method private removeTimbreLayout()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiPanelState(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterProtocol()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimoji void removeTimbreLayout[] Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private resumePlay()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimoji void resumePlay[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->resumePlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mimoji void resumePlay fail"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private shareMore()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f110413

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v1, "failed to share video shareMore "

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showExitConfirm()V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v0, 0x7f110411

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f110410

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$WKwlw1UHQ_Vlk5h6Nhub0TA06Bo;

    invoke-direct {v6, p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$WKwlw1UHQ_Vlk5h6Nhub0TA06Bo;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v0, 0x7f110858

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$uP6YoeGn0T8YavA9GB-FFqdWGMw;

    invoke-direct {v10, p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$uP6YoeGn0T8YavA9GB-FFqdWGMw;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    invoke-static/range {v2 .. v10}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$1;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$1;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showShareSheet()V
    .locals 12

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    array-length v2, v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_3

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_1
    if-ge v7, v2, :cond_2

    sget-object v4, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST:[Ljava/lang/String;

    aget-object v4, v4, v7

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_ICON:[I

    aget v10, v3, v7

    sget-object v3, Lcom/android/camera/constant/ShareConstant;->DEFAULT_SHARE_LIST_NAME:[I

    aget v11, v3, v7

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v5, "no default share entry"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v0, v3

    goto :goto_4

    :cond_6
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    iget v0, v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    if-le v0, v3, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x2

    if-ge v0, v5, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v5, "not match default share strategy"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_4
    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->shareMore()V

    return-void

    :cond_8
    new-instance v0, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    add-int/lit8 v6, v2, 0x1

    const v9, 0x7f0802da

    const v10, 0x7f11008c

    const-string v7, "com.android.camera"

    const-string v8, "more"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/fragment/fullscreen/ShareInfo;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$2;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$2;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070340

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40b00000    # 5.5f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v3

    mul-int/lit8 v5, v0, 0x2

    sub-int/2addr v3, v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v3, v5

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->getItemCount()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v3, v5, :cond_9

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;->setShareInfoList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_6

    :cond_a
    :goto_5
    new-instance v3, Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    invoke-direct {v3, v1, p0, v2}, Lcom/android/camera/fragment/fullscreen/ShareAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;I)V

    iput-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

    new-instance v1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FullScreen"

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/android/camera/fragment/RecyclerAdapterWrapper;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareAdapter:Lcom/android/camera/fragment/fullscreen/ShareAdapter;

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

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_6
    invoke-static {}, Lcom/android/camera/Display;->getNavigationBarHeight()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getNavigationBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_b
    new-instance v0, Lcom/android/camera/animation/type/SlideInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

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

    :cond_c
    :goto_7
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "no IntentActivities"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showTimbreLayout()V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiPanelState(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0182

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->refreshMimojiList()I

    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method private startCombine()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$oKA8iEDjO07ad_mXnkeCyjC7wP0;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$oKA8iEDjO07ad_mXnkeCyjC7wP0;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startPlay()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-static {p0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xfc

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->startPlay()V

    :cond_0
    return-void
.end method


# virtual methods
.method public alertTop(IIJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mAlertTopHintHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->alertTintColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mAlertTopHintHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewTips:Lcom/android/camera/customization/BGTintTextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public concatResult(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimoji void concatResult[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$06lqACFPA1W6s_ZdvHue8ButOxs;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$06lqACFPA1W6s_ZdvHue8ButOxs;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff3

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d008f

    return p0
.end method

.method public getMimojiVideoSavePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    return-object p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0279

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method public isMimojiRecordPreviewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$concatResult$1$FragmentMimojiFullScreen(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->lambda$concatResult$1(ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$0$FragmentMimojiFullScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$onCombineError$4$FragmentMimojiFullScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->lambda$onCombineError$4()V

    return-void
.end method

.method public synthetic lambda$onCombineSuccess$5$FragmentMimojiFullScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->lambda$onCombineSuccess$5()V

    return-void
.end method

.method public synthetic lambda$showExitConfirm$2$FragmentMimojiFullScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->lambda$showExitConfirm$2()V

    return-void
.end method

.method public synthetic lambda$showExitConfirm$3$FragmentMimojiFullScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->lambda$showExitConfirm$3()V

    return-void
.end method

.method public synthetic lambda$startCombine$6$FragmentMimojiFullScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->lambda$startCombine$6()V

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isSupportMimoji()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->supportMimojiVersion()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a0188

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, p0, v1}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isSupportOnlyMimojiMode()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const p2, 0x7f0a0188

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiEditControl:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p0, v0}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->hideShareSheet()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->showExitConfirm()V

    :goto_0
    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->getFragmentMiMoji()Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;->onBackEvent(I)Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "mimoji_play_share"

    const/16 v2, 0x8

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onClick: live_preview_bottom_action"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onClick: live_share_item"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->hideShareSheet()V

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    const-string v2, "more"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->shareMore()V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    :cond_3
    move-object v8, v0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0, v8}, Lcom/android/camera/Util;->genContentValues(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-interface {v1}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v1, v8, v0, v3}, Lcom/android/camera/storage/ImageSaver;->addVideoSync(Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v7

    iget-object v4, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->className:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lcom/android/camera/Util;->startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick: live_share_cancel"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->hideShareSheet()V

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick: mimoji_preview_share"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "concat not finished, skip share~"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->getMimojiPara()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "uri null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick: mimoji_preview_save"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpRecordVideo(II)V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->getMimojiPara()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mimoji_play_save"

    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->pausePlay()V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->startCombine()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick: live_preview_play"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->hideShareSheet()V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->startPlay()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick: live_preview_layout"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->hideTimbreLayout()V

    return-void

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick: live_preview_back"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->showExitConfirm()V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick: btn_mimoji_change_timbre"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->showTimbreLayout()V

    :cond_6
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a009b -> :sswitch_8
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

.method public onCombineError()V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$fe8oa7-K-9uA9iNccm1uZUGQzoc;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$fe8oa7-K-9uA9iNccm1uZUGQzoc;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs onCombineSuccess([Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCombineSuccess() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$RSDWcE4I4OWPonL6IQJ8ghCCYbI;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/-$$Lambda$FragmentMimojiFullScreen$RSDWcE4I4OWPonL6IQJ8ghCCYbI;-><init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onMimojiSaveToLocalFinished(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI onMimojiSaveToLocalFinished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->pausePlay()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onPreviewResume()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->isVideoSaved:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v1, v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->deleteMimojiCache()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

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

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mExitDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->onCombineError()V

    :cond_1
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

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mFragmentMimojiBottomList:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->provideRotateItem(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method public quitMimojiRecordPreview()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiPreviewPlay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMode(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mIsOnShare:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->setPreviewCover(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->showPreviewCover(Z)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->removeTimbreLayout()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xfc

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->onDestory()V

    :cond_1
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xf9

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public showPreviewCover(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverView:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCoverView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    :goto_0
    return-void
.end method

.method public startMimojiRecordPreview()V
    .locals 9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mSavedPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->isVideoSaved:Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->initMimojiView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCombineProgress:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCancelProgress:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mShareLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMImojiViewLayout:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->showPreviewCover(Z)V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->adjustViewBackground()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiPanelState()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomTimbreLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mBottomTimbreLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mMimojiChangeTimbreBtn:Lcom/android/camera/ui/ColorImageView;

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-direct {v1, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v1, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewBack:Landroid/widget/ImageView;

    invoke-direct {v1, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-direct {v1, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v3, 0x3ec28f5c

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v3, 0x7f100045

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewShare:Landroid/widget/ImageView;

    invoke-direct {v1, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xf6

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->getTimeValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3a98

    invoke-static/range {v3 .. v8}, Lcom/android/camera/Util;->clamp(JJJ)J

    move-result-wide v3

    invoke-static {v3, v4, v0, v0}, Lcom/android/camera/Util;->millisecondToTimeString(JZZ)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mPreviewStart:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-static {p0, v2}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method public startMimojiRecordSaving()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->performClick()Z

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xf9

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->removeTimbreLayout()V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
