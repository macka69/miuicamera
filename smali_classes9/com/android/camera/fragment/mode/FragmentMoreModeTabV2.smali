.class public Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;
.super Ljava/lang/Object;
.source "FragmentMoreModeTabV2.java"

# interfaces
.implements Lcom/android/camera/fragment/mode/IMoreMode;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$UIHandler;,
        Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$ForEachCallback;
    }
.end annotation


# static fields
.field private static final FATE_TIME:J = 0x5dcL

.field private static final MSG_FADE_IN:I = 0x64

.field private static final MSG_FADE_OUT:I = 0x65

.field private static final TAG:Ljava/lang/String; = "MoreModeTabV2"


# instance fields
.field private mBarMinHeight:F

.field private mMarginOffset:F

.field private mOverScrollY:F

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollbar:Landroid/view/View;

.field private mScrollbarTrack:Landroid/widget/FrameLayout;

.field private mTrackHeight:F

.field private mTranX:F

.field private mTranY:F

.field private mUIHandler:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$UIHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mOverScrollY:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mOverScrollY:F

    return p1
.end method

.method static synthetic access$016(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;F)F
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mOverScrollY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mOverScrollY:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->cancelFadeOut()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->changeBarPosition()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mTranX:F

    return p0
.end method

.method static synthetic access$302(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mTranX:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mTranY:F

    return p0
.end method

.method static synthetic access$402(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mTranY:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;Landroidx/recyclerview/widget/RecyclerView;Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$ForEachCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->doForEach(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$ForEachCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mScrollbar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->updateScrollbar()V

    return-void
.end method

.method private cancelFadeOut()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mUIHandler:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private changeBarPosition()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    sub-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mScrollbar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mMarginOffset:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-float v0, v2

    mul-float/2addr v1, v0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mScrollbar:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private doForEach(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$ForEachCallback;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p0, :cond_0

    invoke-interface {p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$ForEachCallback;->error()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    :goto_0
    if-gt v0, p0, :cond_2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;->mIconView:Landroid/widget/ImageView;

    instance-of v2, v2, Lcom/android/camera/ui/InnerSpringImageView;

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$ForEachCallback;->run(Lcom/android/camera/fragment/mode/ModeAdapter$ModeViewHolder;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$getModeList$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->cancelFadeOut()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->fadeScrollbar(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private updateScrollbar()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mScrollbar:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mBarMinHeight:F

    iget v3, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mTrackHeight:F

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    mul-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mScrollbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mScrollbar:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 7

    new-instance v6, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->getCountPerLine()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;Landroid/content/Context;IIZ)V

    return-object v6
.end method

.method public createModeItemDecoration(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;)Lcom/android/camera/fragment/mode/ModeItemDecoration;
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/mode/ModeItemDecoration;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->getType()I

    move-result p0

    invoke-direct {v0, p1, p2, p0}, Lcom/android/camera/fragment/mode/ModeItemDecoration;-><init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;I)V

    return-object v0
.end method

.method public fadeScrollbar(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mScrollbar:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x65

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mUIHandler:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$UIHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mUIHandler:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mUIHandler:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$UIHandler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mUIHandler:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$UIHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mUIHandler:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public getCountPerLine()I
    .locals 0

    const/4 p0, 0x1

    invoke-static {p0, p0}, Lcom/android/camera/Display;->getMoreModeTabCol(ZZ)I

    move-result p0

    return p0
.end method

.method public getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const v0, 0x7f0a029c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0390

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    new-instance v1, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$1;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V

    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->addOnScrollListener(Lmiuix/springback/view/SpringBackLayout$OnScrollListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$2;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-static {}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->initSpring(Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/mode/-$$Lambda$FragmentMoreModeTabV2$aRPdUutyDphilIG2v8oUt4diUMg;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/mode/-$$Lambda$FragmentMoreModeTabV2$aRPdUutyDphilIG2v8oUt4diUMg;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const v0, 0x7f0a02a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mScrollbarTrack:Landroid/widget/FrameLayout;

    const v0, 0x7f0a02a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mScrollbar:Landroid/view/View;

    new-instance v0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$UIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mScrollbarTrack:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$UIHandler;-><init>(Landroid/os/Looper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mUIHandler:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$UIHandler;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070587

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mBarMinHeight:F

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070551

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070552

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mMarginOffset:F

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mMarginOffset:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mTrackHeight:F

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public synthetic lambda$getModeList$0$FragmentMoreModeTabV2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->lambda$getModeList$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public modeShouldDownload(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->startInnerEnterAnim()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->clearSpring()V

    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
