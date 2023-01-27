.class public Lcom/android/camera/animation/CommonAnimatorOnSubScribe;
.super Ljava/lang/Object;
.source "CommonAnimatorOnSubScribe.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field protected mTargetGone:Z


# direct methods
.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/animation/CommonAnimatorOnSubScribe;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;->mAnimator:Landroid/animation/Animator;

    return-object p0
.end method


# virtual methods
.method public setDurationTime(I)Lcom/android/camera/animation/CommonAnimatorOnSubScribe;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;->mAnimator:Landroid/animation/Animator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/CommonAnimatorOnSubScribe;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public setStartDelayTime(I)Lcom/android/camera/animation/CommonAnimatorOnSubScribe;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;->mAnimator:Landroid/animation/Animator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    return-object p0
.end method

.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 2
    .param p1    # Lio/reactivex/CompletableEmitter;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/android/camera/animation/CommonAnimatorOnSubScribe$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/animation/CommonAnimatorOnSubScribe$1;-><init>(Lcom/android/camera/animation/CommonAnimatorOnSubScribe;Lio/reactivex/CompletableEmitter;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public targetGone()Lcom/android/camera/animation/CommonAnimatorOnSubScribe;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;->mTargetGone:Z

    return-object p0
.end method
