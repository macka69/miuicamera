.class public Lcom/android/camera/animation/AnimationComposite;
.super Ljava/lang/Object;
.source "AnimationComposite.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationComposite"


# instance fields
.field private mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

.field private mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationDisposable:Lio/reactivex/disposables/Disposable;

.field private mCurrentDegree:I

.field private mOrientation:I

.field private mResourceSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/animation/AnimationDelegate$AnimationResource;",
            ">;"
        }
    .end annotation
.end field

.field private mRotationAnimator:Landroid/animation/ValueAnimator;

.field private mStartDegree:I

.field private mSupportScreenOrientation:Z

.field private mTargetDegree:I

.field private mTargetScreenOrientation:I
    .annotation build Lcom/android/camera/animation/AnimationDelegate$AnimationResource$ScreenOrientation;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    iput v0, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    iput v0, p0, Lcom/android/camera/animation/AnimationComposite;->mStartDegree:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/camera/animation/AnimationComposite$1;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/AnimationComposite$1;-><init>(Lcom/android/camera/animation/AnimationComposite;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/animation/AnimationComposite;Lio/reactivex/ObservableEmitter;)Lio/reactivex/ObservableEmitter;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/animation/AnimationComposite;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/animation/AnimationComposite;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    return p1
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 5
    .param p1    # Ljava/lang/Integer;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AnimationComposite"

    const-string p1, "not active, skip notifyAfterFrameAvailable"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setRetriedIfCameraError(Z)V

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-interface {v3}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->isEnableClick()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3, v0}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->setClickEnable(Z)V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->notifyAfterFrameAvailable(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->notifyAfterFrameAvailable(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/animation/AnimationComposite;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    iput-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;Lcom/android/camera/module/loader/StartControl;)Lio/reactivex/disposables/Disposable;
    .locals 5
    .param p1    # Lio/reactivex/Completable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/Action;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget p1, p3, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    iget v1, p3, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    iget p3, p3, Lcom/android/camera/module/loader/StartControl;->mViewConfigType:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p3, v4, :cond_6

    const/4 v4, 0x2

    if-eq p3, v4, :cond_4

    const/4 v4, 0x3

    if-eq p3, v4, :cond_1

    goto :goto_6

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge v3, p3, :cond_8

    iget-object p3, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-interface {p3}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p3}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->needViewClear()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p3, p1, v2, v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideAnimateElement(ILjava/util/List;I)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget-object p3, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge v3, p3, :cond_8

    iget-object p3, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-interface {p3}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p3, p1, v0, v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideAnimateElement(ILjava/util/List;I)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    iget-object p3, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge v3, p3, :cond_8

    iget-object p3, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-interface {p3}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {p3, p1, v2, v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideAnimateElement(ILjava/util/List;I)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_9
    if-eqz p2, :cond_a

    invoke-static {v0}, Lio/reactivex/Completable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_7

    :cond_a
    invoke-static {v0}, Lio/reactivex/Completable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    :goto_7
    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite;->mAnimationDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public disposeRotation(IZI)V
    .locals 8

    const/16 v0, 0x168

    if-ltz p1, :cond_0

    rem-int/2addr p1, v0

    goto :goto_0

    :cond_0
    rem-int/2addr p1, v0

    add-int/2addr p1, v0

    :goto_0
    iget v1, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p2, p0, Lcom/android/camera/animation/AnimationComposite;->mSupportScreenOrientation:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    iget v2, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    sub-int v2, p1, v2

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit16 v2, v2, 0x168

    :goto_2
    const/16 v5, 0xb4

    if-le v2, v5, :cond_4

    add-int/lit16 v2, v2, -0x168

    :cond_4
    if-gtz v2, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    move v2, v4

    :goto_3
    iput p1, p0, Lcom/android/camera/animation/AnimationComposite;->mOrientation:I

    if-nez p1, :cond_6

    iget v5, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    if-nez v5, :cond_6

    if-nez p2, :cond_6

    return-void

    :cond_6
    rsub-int p1, p1, 0x168

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    iput p3, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetScreenOrientation:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move p3, v4

    :goto_4
    iget-object v5, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge p3, v5, :cond_9

    iget-object v5, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v5, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-interface {v5}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_5

    :cond_7
    if-eqz p2, :cond_8

    iget v6, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetScreenOrientation:I

    iget v7, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    invoke-interface {v5, v6, p1, v7}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideOrientationChanged(ILjava/util/List;I)V

    goto :goto_5

    :cond_8
    iget v6, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    invoke-interface {v5, p1, v6}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->provideRotateItem(Ljava/util/List;I)V

    :goto_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_9
    if-nez v1, :cond_b

    iget p2, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    iput p2, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget p3, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    int-to-float p3, p3

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    goto :goto_6

    :cond_a
    return-void

    :cond_b
    iget-object p2, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c
    iget p2, p0, Lcom/android/camera/animation/AnimationComposite;->mCurrentDegree:I

    iput p2, p0, Lcom/android/camera/animation/AnimationComposite;->mStartDegree:I

    if-eqz v2, :cond_f

    if-ne p2, v0, :cond_d

    move p2, v4

    :cond_d
    iget p3, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    if-nez p3, :cond_e

    goto :goto_7

    :cond_e
    move v0, p3

    goto :goto_7

    :cond_f
    if-nez p2, :cond_10

    move p2, v0

    :cond_10
    iget p3, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    if-ne p3, v0, :cond_e

    move v0, v4

    :goto_7
    const/4 p3, 0x2

    new-array p3, p3, [I

    aput p2, p3, v4

    aput v0, p3, v3

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p2, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/camera/animation/AnimationComposite$2;

    invoke-direct {p3, p0, p1}, Lcom/android/camera/animation/AnimationComposite$2;-><init>(Lcom/android/camera/animation/AnimationComposite;Ljava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getScreenOrientation()I
    .locals 0
    .annotation build Lcom/android/camera/animation/AnimationDelegate$AnimationResource$ScreenOrientation;
    .end annotation

    iget p0, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetScreenOrientation:I

    return p0
.end method

.method public getTargetDegree()I
    .locals 0

    iget p0, p0, Lcom/android/camera/animation/AnimationComposite;->mTargetDegree:I

    return p0
.end method

.method public notifyAfterFirstFrameArrived(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite;->mAfterFrameArrivedEmitter:Lio/reactivex/ObservableEmitter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->notifyDataChanged(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public remove(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/animation/AnimationComposite;->mResourceSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;

    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->canProvide()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->isEnableClick()Z

    move-result v2

    if-eq v2, p1, :cond_1

    invoke-interface {v1, p1}, Lcom/android/camera/animation/AnimationDelegate$AnimationResource;->setClickEnable(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public supportScreenOrientation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/animation/AnimationComposite;->mSupportScreenOrientation:Z

    return p0
.end method
