.class public Lcom/android/camera/scene/SemanticsClassResultParse;
.super Lcom/android/camera/scene/ASDResultParse;
.source "SemanticsClassResultParse.java"


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/BaseModule;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/scene/ASDResultParse;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private eventTrack(I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$updateBacklitScene$0(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 1

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiSceneSelector(I)V

    return-void
.end method

.method private updateASDScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 4

    iget v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    iget p1, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    iget-object v1, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    const/16 v3, 0xa3

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    const/16 v3, 0xa5

    if-ne v2, v3, :cond_6

    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/android/camera/module/Camera2Module;

    invoke-static {v0, p1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->getSceneTipResId(II)I

    invoke-static {v0, p1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isSceneChange(II)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xaf

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0, p1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isCheckSceneEnable(II)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/scene/ASDResultParse;->isGeneralInterception()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->showLensDirtyTip()V

    invoke-direct {p0, v0}, Lcom/android/camera/scene/SemanticsClassResultParse;->eventTrack(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private updateBacklitScene(IILcom/android/camera/module/Camera2Module;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isCheckSceneEnable(II)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/android/camera/module/Camera2Module;->isShowBacklightTip()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p3}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/camera/scene/-$$Lambda$Rx9ncZvFMoyEJ1guJpx2Cqca8CI;

    invoke-direct {v0, p3}, Lcom/android/camera/scene/-$$Lambda$Rx9ncZvFMoyEJ1guJpx2Cqca8CI;-><init>(Lcom/android/camera/module/Camera2Module;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/android/camera/scene/SemanticsClassResultParse;->eventTrack(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/camera/module/Camera2Module;->isShowBacklightTip()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-virtual {p3}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/camera/scene/-$$Lambda$SemanticsClassResultParse$sy51UMoGiYhA3FhaJiu7SOpXHyg;

    invoke-direct {p2, p0}, Lcom/android/camera/scene/-$$Lambda$SemanticsClassResultParse$sy51UMoGiYhA3FhaJiu7SOpXHyg;-><init>(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic parseMiAlgoAsdResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    invoke-virtual {p0, p1}, Lcom/android/camera/scene/SemanticsClassResultParse;->parseMiAlgoAsdResult([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    return-void
.end method

.method public parseMiAlgoAsdResult([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 5

    if-eqz p1, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Semantics)scenes size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Semantics)-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/camera/scene/SemanticsClassResultParse;->updateASDScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
