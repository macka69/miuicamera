.class public Lcom/android/camera/CommonRotationLayout;
.super Ljava/lang/Object;
.source "CommonRotationLayout.java"


# instance fields
.field private mBottomRotationLayout:Landroid/view/View;

.field private mContentRotationLayout:Landroid/view/View;

.field private mForceHorizontal:Z

.field private mForceVertical:Z

.field private mLastModuleIndex:I

.field private mLastTargetViewDegree:I

.field private mScreenHintRotationLayout:Landroid/view/View;

.field private mScreenRotationLayout:Landroid/view/View;

.field private mTopRotationLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/camera/CommonRotationLayout;->initView(Landroid/app/Activity;)V

    return-void
.end method

.method private bottomForceHorizontal(I)Z
    .locals 0

    const/16 p0, 0xb6

    if-eq p1, p0, :cond_0

    const/16 p0, 0xcf

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private bottomForceVertical(I)Z
    .locals 0

    const/16 p0, 0xbc

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private configBottomLayout(ZIII)Z
    .locals 3

    invoke-virtual {p0, p2}, Lcom/android/camera/CommonRotationLayout;->updateForceFixedGravity(I)V

    iget v0, p0, Lcom/android/camera/CommonRotationLayout;->mLastModuleIndex:I

    iget v1, p0, Lcom/android/camera/CommonRotationLayout;->mLastTargetViewDegree:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CommonRotationLayout;->getBottomViewDegree(II)I

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/android/camera/CommonRotationLayout;->getBottomViewDegree(II)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/camera/CommonRotationLayout;->getBottomViewDegree(II)I

    move-result p2

    const/16 v0, 0x5a

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    new-array p2, v1, [Landroid/view/View;

    iget-object p3, p0, Lcom/android/camera/CommonRotationLayout;->mBottomRotationLayout:Landroid/view/View;

    aput-object p3, p2, v2

    invoke-virtual {p0, p1, v0, p4, p2}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    new-array p2, v1, [Landroid/view/View;

    iget-object p3, p0, Lcom/android/camera/CommonRotationLayout;->mBottomRotationLayout:Landroid/view/View;

    aput-object p3, p2, v2

    invoke-virtual {p0, p1, v2, p4, p2}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    goto :goto_0

    :cond_2
    new-array p2, v1, [Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mBottomRotationLayout:Landroid/view/View;

    aput-object v0, p2, v2

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    :goto_0
    return v1
.end method

.method private configTopLayout(ZIII)Z
    .locals 3

    iget v0, p0, Lcom/android/camera/CommonRotationLayout;->mLastModuleIndex:I

    iget v1, p0, Lcom/android/camera/CommonRotationLayout;->mLastTargetViewDegree:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CommonRotationLayout;->getTopViewDegree(II)I

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/android/camera/CommonRotationLayout;->getTopViewDegree(II)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/camera/CommonRotationLayout;->getTopViewDegree(II)I

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_1

    new-array p2, p3, [Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mTopRotationLayout:Landroid/view/View;

    aput-object v0, p2, v2

    invoke-virtual {p0, p1, v2, p4, p2}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-array v0, p3, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/CommonRotationLayout;->mTopRotationLayout:Landroid/view/View;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    :goto_0
    return p3
.end method

.method private getBottomViewDegree(II)I
    .locals 0

    const/16 p0, 0xb6

    if-eq p1, p0, :cond_1

    const/16 p0, 0xbc

    if-eq p1, p0, :cond_0

    const/16 p0, 0xcf

    if-eq p1, p0, :cond_1

    const/16 p0, 0xd0

    if-eq p1, p0, :cond_1

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0
.end method

.method private getTopViewDegree(II)I
    .locals 0

    const/16 p0, 0xb3

    if-eq p1, p0, :cond_0

    const/16 p0, 0xb6

    if-eq p1, p0, :cond_0

    const/16 p0, 0xb9

    if-eq p1, p0, :cond_0

    const/16 p0, 0xbc

    if-eq p1, p0, :cond_0

    const/16 p0, 0xbd

    if-eq p1, p0, :cond_0

    const/16 p0, 0xcf

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd0

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd4

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd5

    if-eq p1, p0, :cond_0

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initView(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x7f0a00eb

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mContentRotationLayout:Landroid/view/View;

    const v0, 0x7f0a03d9

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mTopRotationLayout:Landroid/view/View;

    const v0, 0x7f0a0098

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mBottomRotationLayout:Landroid/view/View;

    const v0, 0x7f0a0194

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CommonRotationLayout;->mScreenRotationLayout:Landroid/view/View;

    const v0, 0x7f0a02c8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/CommonRotationLayout;->mScreenHintRotationLayout:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getForceFixedRotation(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CommonRotationLayout;->mForceHorizontal:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x10e

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/CommonRotationLayout;->mForceVertical:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return p1
.end method

.method public isForceFixedGravity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CommonRotationLayout;->mForceHorizontal:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/CommonRotationLayout;->mForceVertical:Z

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

.method public provideOrientationChanged(ZII)Z
    .locals 4

    rsub-int v0, p3, 0x168

    rem-int/lit16 v0, v0, 0x168

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/camera/CommonRotationLayout;->configTopLayout(ZIII)Z

    move-result v1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/camera/CommonRotationLayout;->configBottomLayout(ZIII)Z

    move-result v2

    iput p2, p0, Lcom/android/camera/CommonRotationLayout;->mLastModuleIndex:I

    const/4 p2, 0x0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    return p2

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/CommonRotationLayout;->mContentRotationLayout:Landroid/view/View;

    aput-object v2, v1, p2

    iget-object p2, p0, Lcom/android/camera/CommonRotationLayout;->mScreenRotationLayout:Landroid/view/View;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x2

    iget-object v3, p0, Lcom/android/camera/CommonRotationLayout;->mScreenHintRotationLayout:Landroid/view/View;

    aput-object v3, v1, p2

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/android/camera/CommonRotationLayout;->updateOrientationLayoutRotation(ZII[Landroid/view/View;)V

    iput v0, p0, Lcom/android/camera/CommonRotationLayout;->mLastTargetViewDegree:I

    return v2
.end method

.method public updateForceFixedGravity(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/CommonRotationLayout;->bottomForceHorizontal(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/CommonRotationLayout;->mForceHorizontal:Z

    invoke-direct {p0, p1}, Lcom/android/camera/CommonRotationLayout;->bottomForceVertical(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/CommonRotationLayout;->mForceVertical:Z

    return-void
.end method

.method public varargs updateOrientationLayoutRotation(ZII[Landroid/view/View;)V
    .locals 8

    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, p4, v3

    if-eqz p1, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    new-instance v5, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {v5, v4}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v5}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, 0x1

    if-nez p2, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    const/16 v7, 0x5a

    if-ne p2, v7, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lcom/android/camera/Display;->getScreenOrientation(I)I

    move-result v7

    :goto_1
    if-eqz v7, :cond_6

    if-eq v7, v6, :cond_4

    const/4 v6, 0x2

    if-eq v7, v6, :cond_4

    const/4 v6, 0x4

    if-eq v7, v6, :cond_6

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/camera/CommonRotationLayout;->mBottomRotationLayout:Landroid/view/View;

    if-ne v4, v6, :cond_5

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v6

    add-int/lit16 v6, v6, -0xa0

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v6, 0x11

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v6, 0x10

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_2
    int-to-float v6, p2

    invoke-virtual {v4, v6}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {v0}, Lio/reactivex/Completable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_8
    return-void
.end method
