.class public Lcom/android/camera/fragment/PresentationDisplay;
.super Ljava/lang/Object;
.source "PresentationDisplay.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$RequestRenderListener;
.implements Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;


# static fields
.field private static final TAG:Ljava/lang/String; = "PresentationDisplay"


# instance fields
.field private mCameraActivity:Lcom/android/camera/Camera;

.field private mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

.field private mDegree:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/PresentationDisplay;->initCameraPresentation(Landroid/content/Context;)Lcom/android/camera/fragment/CameraPresentation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    return-void
.end method

.method private addRequestListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraScreenNail;->addRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    :cond_0
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/fragment/PresentationDisplay;
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/PresentationDisplay;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/PresentationDisplay;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method private initCameraPresentation(Landroid/content/Context;)Lcom/android/camera/fragment/CameraPresentation;
    .locals 1

    new-instance p0, Lcom/android/camera/fragment/CameraPresentation;

    invoke-static {p1}, Lcom/android/camera/fragment/PresentationDisplay;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/CameraPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-object p0
.end method

.method static synthetic lambda$show$0(Lcom/android/camera/fragment/CameraPresentation;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    :cond_0
    return-void
.end method

.method private removeRequestListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraScreenNail;->removeRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canProvide()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public cancel()V
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportPresentationDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/PresentationDisplay;->removeRequestListener()V

    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Display;->switchPresentationDisplay(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    sget-object p0, Lcom/android/camera/fragment/PresentationDisplay;->TAG:Ljava/lang/String;

    const-string v0, "presentation display cancel"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public hideDelayNumber()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/CameraPresentation;->hideDelayNumber()V

    :cond_0
    return-void
.end method

.method public isEnableClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needViewClear()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/PresentationDisplay;->cancel()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/PresentationDisplay;->show(I)V

    :goto_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
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

    return-void
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/16 p1, 0x168

    rsub-int p2, p2, 0x168

    if-ltz p2, :cond_0

    rem-int/2addr p2, p1

    goto :goto_0

    :cond_0
    rem-int/2addr p2, p1

    add-int/2addr p2, p1

    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Presentation;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iput p2, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/fragment/CameraPresentation;->isInited()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/fragment/CameraPresentation;->getDelayNumberTv()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {p1}, Lcom/android/camera/fragment/CameraPresentation;->getDelayNumberTv()Landroid/widget/TextView;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setRotation(F)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    sub-int v0, p2, v0

    if-ltz v0, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit16 v0, v0, 0x168

    :goto_1
    const/16 v1, 0xb4

    if-le v0, v1, :cond_5

    add-int/lit16 v0, v0, -0x168

    :cond_5
    const/4 v1, 0x0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    add-int/lit16 v2, p2, 0x168

    rem-int/2addr v2, p1

    iget v3, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    if-eqz v0, :cond_9

    if-ne v3, p1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    move p1, v2

    goto :goto_5

    :cond_9
    if-nez v3, :cond_a

    move v3, p1

    :cond_a
    if-ne v2, p1, :cond_b

    goto :goto_4

    :cond_b
    move v1, v2

    :goto_4
    move p1, v1

    move v1, v3

    :goto_5
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/camera/fragment/CameraPresentation;->getDelayNumberTv()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/camera/animation/type/RotateOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {v2}, Lcom/android/camera/fragment/CameraPresentation;->getDelayNumberTv()Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/animation/type/RotateOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/animation/type/RotateOnSubscribe;->setRotateDegree(II)Lcom/android/camera/animation/type/RotateOnSubscribe;

    move-result-object p1

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_c
    iput p2, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/CameraPresentation;->setDegree(I)V

    :cond_d
    return-void
.end method

.method public registerAnimationResource(Lcom/android/camera/animation/AnimationComposite;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0xffffff1

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->addInBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/CameraPresentation;->getTextureView()Lcom/android/camera/ui/GLTextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {p0}, Lcom/android/camera/fragment/CameraPresentation;->getTextureView()Lcom/android/camera/ui/GLTextureView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    :cond_0
    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    return-void
.end method

.method public show(I)V
    .locals 2

    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/camera/Display;->switchPresentationDisplay(Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/PresentationDisplay;->initCameraPresentation(Landroid/content/Context;)Lcom/android/camera/fragment/CameraPresentation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    new-instance v1, Lcom/android/camera/fragment/-$$Lambda$PresentationDisplay$anrp-PX6yzA6eMfKOAekbMldCpQ;

    invoke-direct {v1, p1}, Lcom/android/camera/fragment/-$$Lambda$PresentationDisplay$anrp-PX6yzA6eMfKOAekbMldCpQ;-><init>(Lcom/android/camera/fragment/CameraPresentation;)V

    invoke-virtual {v0, v1}, Landroid/app/Presentation;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {p1}, Landroid/app/Presentation;->show()V

    invoke-direct {p0}, Lcom/android/camera/fragment/PresentationDisplay;->addRequestListener()V

    sget-object p0, Lcom/android/camera/fragment/PresentationDisplay;->TAG:Ljava/lang/String;

    const-string p1, "presentation display show"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showDelayNumber(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/CameraPresentation;->showDelayNumber(I)V

    :cond_0
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/fragment/PresentationDisplay;->cancel()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    :cond_0
    return-void
.end method
