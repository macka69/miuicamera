.class public Lcom/android/camera/fragment/subtitle/FragmentSubtitle;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentSubtitle.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;
.implements Lcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;
    }
.end annotation


# static fields
.field private static final SUBTITLE_CHECK_NETWORK:I = 0x66

.field private static final SUBTITLE_CINEMATICASPECTRATIO_OFFSET:I

.field private static final SUBTITLE_LANDSCAPE_OFFSET:I

.field private static final SUBTITLE_NO_SPEAK_TIP:I = 0x65

.field private static final SUBTITLE_SHOW_TIME_END:I = 0x64

.field private static final SUBTITLE_VERTICAL_OFFSET:I

.field private static final SUBTITLE_VERTICAL_OFFSET_NORMAL:I

.field private static final SUBTITLE_VIEW_WIDTH:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isNetWorkAvailable:Z

.field private isRecording:Z

.field private mCtaNoticeFragment:Lcom/android/camera/fragment/CtaNoticeFragment;

.field private mLeftShow:Landroid/widget/TextView;

.field private mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

.field private mRightShow:Landroid/widget/TextView;

.field private mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

.field private mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

.field private mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

.field private mVerticalShow:Landroid/widget/TextView;

.field private mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

.field private subtitleHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private subtitleView:Landroid/view/View;

.field private top:I

.field private topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

.field private verticalViewHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->TAG:Ljava/lang/String;

    const v0, 0x41a8a3d7

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VERTICAL_OFFSET:I

    const v0, 0x41dae148

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VERTICAL_OFFSET_NORMAL:I

    const v0, 0x40cb851f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VIEW_WIDTH:I

    const v0, 0x41d1999a

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_CINEMATICASPECTRATIO_OFFSET:I

    const v0, 0x42acb333

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_LANDSCAPE_OFFSET:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    new-instance v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$1;-><init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isNetWorkAvailable:Z

    return p0
.end method

.method private setAnyViewGone()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->resetAnimation()V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->resetAnimation()V

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->resetAnimation()V

    return-void
.end method

.method private updateLightingRelativeView()V
    .locals 7

    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->setAnyViewGone()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mi/config/DataItemFeature;->isSupportOrientation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v3

    sget v6, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VERTICAL_OFFSET:I

    add-int/2addr v3, v6

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mi/config/DataItemFeature;->isSupportOrientation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v1}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->startAnimation()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v1}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->startAnimation()V

    :goto_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mi/config/DataItemFeature;->isSupportOrientation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, v5

    sub-int/2addr v0, v4

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    sget p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VIEW_WIDTH:I

    sub-int/2addr v0, p0

    sget p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_LANDSCAPE_OFFSET:I

    sub-int/2addr v0, p0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sget p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_CINEMATICASPECTRATIO_OFFSET:I

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isRightLandScape()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mi/config/DataItemFeature;->isSupportOrientation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v0, v5

    sub-int/2addr v0, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    sget v4, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VIEW_WIDTH:I

    sub-int/2addr v0, v4

    sget v4, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_LANDSCAPE_OFFSET:I

    sub-int/2addr v0, v4

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sget v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_CINEMATICASPECTRATIO_OFFSET:I

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_3
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mi/config/DataItemFeature;->isSupportOrientation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->startAnimation()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->startAnimation()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->setAnyViewGone()V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v2

    sget v3, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VERTICAL_OFFSET:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result v2

    sget v3, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->SUBTITLE_VERTICAL_OFFSET_NORMAL:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->startAnimation()V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public checkNetWorkStatus()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isNetWorkAvailable:Z

    sget-object p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->TAG:Ljava/lang/String;

    const-string v0, "checkNetWorkStatus: netWork is available "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isNetWorkAvailable:Z

    sget-object v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->TAG:Ljava/lang/String;

    const-string v1, "checkNetWorkStatus: netWork is unavailable"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$2;-><init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfffe

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00a2

    return p0
.end method

.method public getSubtitleContentAsync(Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;J)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getSubtitleContentAsync(Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;J)V

    return-void
.end method

.method public getSubtitleContentSync()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getSubtitleContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleSubtitleRecordingPause()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    sget-object v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->TAG:Ljava/lang/String;

    const-string v1, "handleSubtitleRecordingPause: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->setAnyViewGone()V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateTopAlertLayout()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->onRecognitionListener(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->pauseRecording()V

    return-void
.end method

.method public handleSubtitleRecordingResume()V
    .locals 2

    sget-object v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->TAG:Ljava/lang/String;

    const-string v1, "handleSubtitleRecordingResume: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateTopAlertLayout()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->updateLightingRelativeView()V

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->resumeRecording()V

    return-void
.end method

.method public handleSubtitleRecordingStart()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->checkNetWorkStatus()V

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackSubtitleRecordingStart()V

    sget-object v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->TAG:Ljava/lang/String;

    const-string v1, "handleSubtitleRecordingStart: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setAlertAnim(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/16 v2, 0x8

    const v3, 0x7f1107f5

    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSubtitleHint(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->updateLightingRelativeView()V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateTopAlertLayout()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isNetWorkAvailable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->startRecording()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackWithoutNetwork()V

    :goto_0
    return-void
.end method

.method public handleSubtitleRecordingStop()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    sget-object v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->TAG:Ljava/lang/String;

    const-string v1, "handleSubtitleRecordingStop: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x0

    const v2, 0x7f1107f5

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSubtitleHint(II)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateTopAlertLayout()V

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;->onRecognitionListener(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->stopRecording()V

    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->setAnyViewGone()V

    return-void
.end method

.method public initPermission()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCTACanCollect()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lcom/android/camera/fragment/CtaNoticeFragment;->showCta(Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/CtaNoticeFragment$OnCtaNoticeClickListener;I)Lcom/android/camera/fragment/CtaNoticeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mCtaNoticeFragment:Lcom/android/camera/fragment/CtaNoticeFragment;

    :cond_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a039b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->verticalViewHeight:I

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->verticalViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x7f0a0458

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mLeftShow:Landroid/widget/TextView;

    const v0, 0x7f0a0459

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRightShow:Landroid/widget/TextView;

    const v0, 0x7f0a045a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVerticalShow:Landroid/widget/TextView;

    const v0, 0x7f0a0387

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewVertical:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    const v0, 0x7f0a0388

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewLeft:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    const v0, 0x7f0a0389

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/subtitle/SoundWaveView;

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mSwViewRight:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    new-instance p1, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;-><init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mRecognitionListener:Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    new-instance p1, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;-><init>(Lcom/android/camera/fragment/subtitle/FragmentSubtitle;)V

    invoke-direct {p1, v0, v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;-><init>(Landroid/content/Context;Lcom/android/camera/fragment/subtitle/FragmentSubtitle$RecognitionListener;)V

    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mCtaNoticeFragment:Lcom/android/camera/fragment/CtaNoticeFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/CtaNoticeFragment;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->mVoiceOnlineRecog:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {v0}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->onDestroy()V

    iget-object p0, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setAlertAnim(Z)V

    :cond_1
    return-void
.end method

.method public onNegativeClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->subtitleView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xac

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const/16 p2, 0xa2

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-static {p2}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method public onPositiveClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideOrientationChanged(ILjava/util/List;I)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mi/config/DataItemFeature;->isSupportOrientation(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->provideRotateItem(Ljava/util/List;I)V

    :cond_0
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

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->isSwitchOn(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->isRecording:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;->updateLightingRelativeView()V

    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xe7

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xe7

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
