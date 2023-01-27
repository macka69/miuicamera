.class public Lcom/android/camera/preferences/EffectComparisonPreference;
.super Landroidx/preference/PreferenceCategory;
.source "EffectComparisonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isNsPauseOrStart:Z

.field private isOsPauseOrStart:Z

.field private mCardViewNs:Landroidx/cardview/widget/CardView;

.field private mCardViewOs:Landroidx/cardview/widget/CardView;

.field private mEffectComparisonNsCover:Landroid/view/View;

.field private mEffectComparisonNsPlay:Landroid/view/View;

.field private mEffectComparisonOsCover:Landroid/view/View;

.field private mEffectComparisonOsPlay:Landroid/view/View;

.field private mNsVideoView:Landroid/widget/VideoView;

.field private mOsVideoView:Landroid/widget/VideoView;

.field private mTextViewNs:Landroid/widget/TextView;

.field private mTextViewOs:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/preferences/EffectComparisonPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/preferences/EffectComparisonPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    iput-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    iput-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    iput-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    return-void
.end method

.method static synthetic lambda$preparedVideoView$0(Landroid/widget/VideoView;Landroid/view/View;Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p2, 0x3

    if-ne p3, p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->setAlpha(F)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$preparedVideoView$1(Landroid/widget/VideoView;Landroid/view/View;Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    new-instance v0, Lcom/android/camera/preferences/-$$Lambda$EffectComparisonPreference$8TvYhBfVqBL8BhTheLJ_xH1Xk7Q;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/preferences/-$$Lambda$EffectComparisonPreference$8TvYhBfVqBL8BhTheLJ_xH1Xk7Q;-><init>(Landroid/widget/VideoView;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method private preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    new-instance p0, Lcom/android/camera/preferences/-$$Lambda$EffectComparisonPreference$wSIgH8CyQ3tL7H9DYs_umD08mMU;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/preferences/-$$Lambda$EffectComparisonPreference$wSIgH8CyQ3tL7H9DYs_umD08mMU;-><init>(Landroid/widget/VideoView;Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private preparedVideos()V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    const v2, 0x7f100007

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    const v2, 0x7f100008

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v0

    const v1, 0x7f10000b

    const v2, 0x7f100009

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    invoke-direct {p0, v0, v3, v2}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    invoke-direct {p0, v0, v3, v2}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a013b

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mTextViewOs:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0a013a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mTextViewNs:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0a02ce

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    const v0, 0x7f0a02cc

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    const v0, 0x7f0a0138

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsCover:Landroid/view/View;

    const v0, 0x7f0a0136

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsCover:Landroid/view/View;

    const v0, 0x7f0a0139

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    const v0, 0x7f0a0137

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    const v0, 0x7f0a00a5

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mCardViewOs:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0a00a4

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mCardViewNs:Landroidx/cardview/widget/CardView;

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mCardViewOs:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mCardViewNs:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mCardViewOs:Landroidx/cardview/widget/CardView;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mCardViewNs:Landroidx/cardview/widget/CardView;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideos()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07024f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mTextViewOs:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mTextViewNs:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "key_video_common_click"

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v4}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsCover:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsCover:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    iput-boolean v4, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v4}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsCover:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsCover:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    goto :goto_0

    :pswitch_1
    iget-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v4}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsCover:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsCover:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    iput-boolean v4, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v4}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsCover:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsCover:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a00a4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/android/camera/preferences/EffectComparisonPreference;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_2
    iget-object p0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/android/camera/preferences/EffectComparisonPreference;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideos()V

    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsCover:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
