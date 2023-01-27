.class Lcom/android/camera/fragment/bottom/action/Pickers;
.super Ljava/lang/Object;
.source "Pickers.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Pickers"


# instance fields
.field private mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

.field private mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mUpDownAnimFlag:Z

.field private mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    if-eqz p2, :cond_0

    const p2, 0x7f0a042b

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f0a0442

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    :cond_0
    const p2, 0x7f0a042a

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f0a0441

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method static synthetic lambda$setBackgroundResource$1(ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic lambda$setOnClickListener$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private playAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f100005

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f100006

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAllViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public hide()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->playAnimation()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getAllViews()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/camera/fragment/bottom/action/-$$Lambda$Pickers$OvhUSCk0AA6YDqOIhReRkQOnoOw;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/bottom/action/-$$Lambda$Pickers$OvhUSCk0AA6YDqOIhReRkQOnoOw;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getAllViews()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/camera/fragment/bottom/action/-$$Lambda$Pickers$9IEkxapos2pVz5Uc7uXh8Ith3Yw;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/bottom/action/-$$Lambda$Pickers$9IEkxapos2pVz5Uc7uXh8Ith3Yw;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    return-void
.end method

.method public touchScaleTint()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    return-void
.end method

.method public useDefault(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownSwitcher:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCameraPicker:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
