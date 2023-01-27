.class public Lcom/android/camera/fragment/music/FragmentLiveMusicCut;
.super Lmiuix/appcompat/app/AlertDialog;
.source "FragmentLiveMusicCut.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;
    }
.end annotation


# static fields
.field public static final MUSIC_CUT_STATE_PAUSE:I = 0x3

.field public static final MUSIC_CUT_STATE_START:I = 0x2

.field public static final MUSIC_CUT_STATE_STOP:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private isMusicCutEnd:Z

.field private isMusicScroll:Z

.field private mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

.field private mCurrentState:I

.field private mFrameAdapter:Lcom/android/camera/fragment/music/MusicFrameAdapter;

.field private mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mFrameScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mLiveDuration:J

.field private mMusicCut:Lcom/android/camera/fragment/music/MusicCut;

.field private mMusicCutCancel:Landroid/widget/ImageView;

.field private mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

.field private mMusicCutPlay:Landroid/widget/ImageView;

.field private mMusicCutSave:Landroid/widget/ImageView;

.field private mMusicCutStartTime:J

.field private mMusicEditLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutStartTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->isMusicCutEnd:Z

    iput-boolean p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->isMusicScroll:Z

    new-instance p1, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$2;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)V

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    iput-wide p2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mLiveDuration:J

    new-instance p1, Lcom/android/camera/fragment/music/MusicCut;

    invoke-direct {p1}, Lcom/android/camera/fragment/music/MusicCut;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCut:Lcom/android/camera/fragment/music/MusicCut;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/MusicFrameAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameAdapter:Lcom/android/camera/fragment/music/MusicFrameAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->isMusicCutEnd:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->isMusicScroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentState:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/LiveMusicInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutStartTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutStartTime:J

    return-wide p1
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->startPlayOrStopMusicByTime(Lcom/android/camera/fragment/music/LiveMusicInfo;I)V

    return-void
.end method

.method public getCurrentState()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentState:I

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a01fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicEditLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutPlay:Landroid/widget/ImageView;

    const v0, 0x7f0a02aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutCancel:Landroid/widget/ImageView;

    const v0, 0x7f0a02ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutSave:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutCancel:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutSave:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$1;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$1;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicCut;Landroid/content/Context;IZ)V

    new-instance v0, Lcom/android/camera/fragment/music/MusicFrameAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/camera/fragment/music/MusicFrameAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameAdapter:Lcom/android/camera/fragment/music/MusicFrameAdapter;

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameAdapter:Lcom/android/camera/fragment/music/MusicFrameAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public musicCut(Lcom/android/camera/fragment/music/LiveMusicInfo;JJ)Lcom/android/camera/fragment/music/LiveMusicInfo;
    .locals 10

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->isMusicCutEnd:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/module/impl/component/FileUtils;->MUSIC_CUT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LIVE_MUSIC_CUT.mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    :try_start_0
    div-long/2addr v2, p4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCut:Lcom/android/camera/fragment/music/MusicCut;

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/music/MusicCut;->setLoopNum(I)V

    iget-object v3, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCut:Lcom/android/camera/fragment/music/MusicCut;

    iget-object v4, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    add-long v8, p2, p4

    move-object v5, v1

    move-wide v6, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/fragment/music/MusicCut;->clipMp3(Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-object v1, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCut:Lcom/android/camera/fragment/music/MusicCut;

    invoke-virtual {p0}, Lcom/android/camera/fragment/music/MusicCut;->getLoopNum()I

    move-result p0

    int-to-long p2, p0

    mul-long/2addr p2, p4

    iput-wide p2, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mDuration:J

    invoke-static {p4, p5}, Lcom/android/camera/fragment/music/MusicUtils;->formatTime(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mDurationText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    const-string p2, "Music editing failed"

    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    iget-wide v2, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutStartTime:J

    iget-wide v4, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mLiveDuration:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->musicCut(Lcom/android/camera/fragment/music/LiveMusicInfo;JJ)Lcom/android/camera/fragment/music/LiveMusicInfo;

    move-result-object p1

    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: music_cut_save , musicInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    invoke-interface {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->musicCutSuccess(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    goto :goto_0

    :sswitch_1
    sget-object p1, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    const-string v0, "onClick: music_cut_cancel"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->dismiss()V

    goto :goto_0

    :sswitch_2
    sget-object p1, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: iv_music_play , isMusicScroll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->isMusicScroll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->isMusicScroll:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    return-void

    :cond_0
    iget p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    const/4 v0, 0x3

    invoke-interface {p1, p0, v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->startPlayOrStopMusicByTime(Lcom/android/camera/fragment/music/LiveMusicInfo;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-interface {p1, p0, v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->startPlayOrStopMusicByTime(Lcom/android/camera/fragment/music/LiveMusicInfo;I)V

    :cond_2
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a01d8 -> :sswitch_2
        0x7f0a02aa -> :sswitch_1
        0x7f0a02ab -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    const/4 v3, 0x0

    const v4, 0x101005d

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const v2, 0x7f0d00cb

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->initView(Landroid/view/View;)V

    const v2, 0x7f11041d

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMusicCutStartOrStopPlay(Z)V
    .locals 3

    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicCutStartOrStopPlay isPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutPlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutPlay:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public selectMusicCut(Lcom/android/camera/fragment/music/LiveMusicInfo;Z)V
    .locals 5

    sget-object v0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectMusicCut music= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    iget-wide v0, p1, Lcom/android/camera/fragment/music/LiveMusicInfo;->mDuration:J

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicEditLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameAdapter:Lcom/android/camera/fragment/music/MusicFrameAdapter;

    long-to-float v0, v0

    iget-wide v3, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mLiveDuration:J

    long-to-float v1, v3

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/music/MusicFrameAdapter;->setRatio(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mFrameRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    const-wide/16 v0, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->selectMusicPlayStartTime(Lcom/android/camera/fragment/music/LiveMusicInfo;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentMusic:Lcom/android/camera/fragment/music/LiveMusicInfo;

    const/4 p2, 0x2

    invoke-interface {p1, p0, p2}, Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;->startPlayOrStopMusicByTime(Lcom/android/camera/fragment/music/LiveMusicInfo;I)V

    :goto_0
    return-void
.end method

.method public setCurrentState(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mCurrentState:I

    return-void
.end method

.method public setMusicCutCallback(Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicCut;->mMusicCutListener:Lcom/android/camera/fragment/music/FragmentLiveMusicCut$MusicCutListener;

    return-void
.end method
