.class public Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;
.super Ljava/lang/Object;
.source "RecordingStateChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$RecordState;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordingState"


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getCurrentModuleIndex()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    const/16 p0, 0xa0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/AppController;->getCurrentModuleIndex()I

    move-result p0

    :goto_0
    return p0
.end method

.method private hideHint()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    invoke-static {}, Lcom/android/camera/Display;->isFoldDisplayType()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f110356

    goto :goto_0

    :cond_0
    const v1, 0x7f110607

    :goto_0
    const-string v2, "esp_display"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method private setZoomRatio(FF)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaa

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;->setMaxZoomRatio(F)V

    invoke-interface {p0, p2}, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;->setMinZoomRatio(F)V

    :cond_0
    return-void
.end method

.method private updateRightTips(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isReal8K()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v3

    if-eqz p1, :cond_7

    if-eqz v2, :cond_1

    const v0, 0x7f110936

    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    const v0, 0x7f110937

    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const v0, 0x7f11093c

    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const v0, 0x7f110737

    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p2

    const/16 v0, 0xd0

    const-wide/16 v1, -0x1

    const/16 v3, 0x8

    if-eq p2, v0, :cond_6

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p2

    const/16 v0, 0xd4

    if-ne p2, v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 p2, 0xcf

    if-ne p0, p2, :cond_7

    const p0, 0x7f110385

    invoke-interface {p1, v3, p0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    goto :goto_3

    :cond_6
    :goto_2
    const p0, 0x7f110389

    invoke-interface {p1, v3, p0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    const-string v0, "RecordingState"

    const-string v1, "onFailed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->onFinish()V

    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/aftersales/AftersalesManager;->count(JI)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    return-void
.end method

.method public onFinish()V
    .locals 11

    const-string v0, "RecordingState"

    const-string v1, "onFinish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa4

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xa6

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v6

    const/16 v7, 0xa9

    const/16 v8, 0xd0

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v6, v7, :cond_1b

    const/16 v7, 0xae

    if-eq v6, v7, :cond_18

    const/16 v7, 0xb7

    if-eq v6, v7, :cond_15

    const/16 v7, 0xbb

    if-eq v6, v7, :cond_13

    const/16 v7, 0xcc

    if-eq v6, v7, :cond_10

    const/16 v7, 0xd4

    if-eq v6, v7, :cond_e

    const/16 v7, 0xd7

    if-eq v6, v7, :cond_15

    const/16 v7, 0xb3

    if-eq v6, v7, :cond_c

    const/16 v7, 0xb4

    if-eq v6, v7, :cond_7

    const/16 v7, 0xcf

    if-eq v6, v7, :cond_4

    if-eq v6, v8, :cond_1b

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideExtraMenu()V

    :cond_2
    invoke-interface {v0, v10}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    :cond_3
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckMacroMode()V

    invoke-virtual {v3, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->recheckVideoFps(Z)V

    invoke-virtual {v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckAiEnhancedVideo()V

    invoke-virtual {v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckAiAudio()V

    invoke-virtual {v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckAiAudioSingle()V

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_6
    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setConfigMenuResetWhenRestartmode()V

    invoke-interface {v0, v10}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_9
    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    invoke-interface {v0, v10}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    :cond_a
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb5

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->onRecordingStop()V

    :cond_b
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_21

    invoke-interface {p0, v9}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterResetTip(Z)V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterDescriptionTip()V

    invoke-virtual {v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckAiAudio()V

    goto/16 :goto_0

    :cond_c
    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    :cond_d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xe6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    if-eqz p0, :cond_21

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->processingFinish()V

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0x3a3

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->processingFinish()V

    :cond_f
    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    invoke-interface {v0, v10}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_0

    :cond_10
    if-eqz v1, :cond_11

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_11
    if-eqz v2, :cond_12

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_12
    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    invoke-interface {v0, v10}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    new-array p0, v9, [I

    const/16 v1, 0xc5

    aput v1, p0, v5

    invoke-interface {v0, v9, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x1a5

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;

    if-eqz v2, :cond_14

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_14
    if-eqz p0, :cond_21

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;->onRecordingStop()V

    goto :goto_0

    :cond_15
    if-eqz v1, :cond_16

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_16
    if-eqz v2, :cond_17

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_17
    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    invoke-interface {v0, v10}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    const/4 p0, 0x4

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-interface {v0, v9, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    invoke-interface {v0, v9}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMusicClose(Z)V

    goto :goto_0

    :cond_18
    if-eqz v1, :cond_19

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_19
    if-eqz v2, :cond_1a

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_1a
    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    invoke-interface {v0, v10}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    new-array p0, v10, [I

    fill-array-data p0, :array_1

    invoke-interface {v0, v9, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    invoke-interface {v0, v9}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMusicClose(Z)V

    goto :goto_0

    :cond_1b
    if-eqz v1, :cond_1c

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_1c
    if-eqz v2, :cond_1e

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    if-ne p0, v8, :cond_1d

    invoke-interface {v2, v9, v9}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->enableStopButton(ZZ)V

    :cond_1d
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_1e
    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    invoke-interface {v0, v10}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    :cond_1f
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p0, :cond_20

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckParameterDescriptionTip()V

    :cond_20
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckMacroMode()V

    :cond_21
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc5
        0xf5
        0x103
        0xc6
    .end array-data

    :array_1
    .array-data 4
        0xe1
        0xf5
    .end array-data
.end method

.method public onLongExposePrepare()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingLongExposePrepare()V

    return-void
.end method

.method public onLongExposeStart()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingLongExposeStart()V

    return-void
.end method

.method public onMimojiCreateBack()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingMimojiBack()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xf6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->backToPreview(ZZ)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->mimojiEnd()V

    return-void
.end method

.method public onPause()V
    .locals 7

    const-string v0, "RecordingState"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xaf

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v4, 0xae

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq p0, v4, :cond_4

    const/16 v4, 0xb3

    if-eq p0, v4, :cond_3

    const/16 v4, 0xb7

    if-eq p0, v4, :cond_2

    const/16 v4, 0xcc

    if-eq p0, v4, :cond_1

    const/16 v3, 0xd4

    if-eq p0, v3, :cond_0

    const/16 v3, 0xd7

    if-eq p0, v3, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPause()V

    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x3a3

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->processingPause()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPause()V

    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    new-array p0, v5, [I

    const/16 v0, 0xc5

    aput v0, p0, v3

    invoke-interface {v1, v5, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPause()V

    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    const/4 p0, 0x4

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-interface {v1, v5, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xe6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->processingPause()V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPause()V

    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_1

    invoke-interface {v1, v5, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    :cond_5
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc5
        0xf5
        0x103
        0xc6
    .end array-data

    :array_1
    .array-data 4
        0xe1
        0xf5
    .end array-data
.end method

.method public onPostPreview()V
    .locals 1

    const-string p0, "RecordingState"

    const-string v0, "onPostPreview"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xab

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingWorkspace(Z)V

    return-void
.end method

.method public onPostPreviewBack()V
    .locals 6

    const-string v0, "RecordingState"

    const-string v1, "onPostPreviewBack"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v1

    const/16 v2, 0xb8

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingWorkspace(Z)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v5

    if-eq v5, v2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v2

    const/16 v5, 0xb7

    if-eq v2, v5, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v2, 0xd7

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p0, 0xe1

    goto :goto_2

    :cond_2
    :goto_1
    const/16 p0, 0xc5

    :goto_2
    aput p0, v1, v4

    const/16 p0, 0xf5

    aput p0, v1, v3

    const/4 p0, 0x2

    const/16 v2, 0x103

    aput v2, v1, p0

    invoke-interface {v0, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->enableMenuItem(Z[I)V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    return-void
.end method

.method public onPostSavingFinish()V
    .locals 6

    const-string v0, "RecordingState"

    const-string v1, "onPostSavingFinish"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v2, 0xa6

    const/4 v3, 0x0

    const/16 v4, 0xb0

    const/4 v5, 0x0

    if-eq p0, v2, :cond_3

    const/16 v0, 0xac

    if-eq p0, v0, :cond_1

    if-eq p0, v4, :cond_0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xd8

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;

    if-eqz p0, :cond_4

    invoke-interface {p0, v5, v5, v5}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->updatePreviewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->recheckVideoFps(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz p0, :cond_4

    const-string v1, "onPostExecute setDisplayPreviewBitmap null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v5}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V

    invoke-interface {p0, v3}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->showSmallPreview(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onPostSavingStart(I)V
    .locals 11
    .param p1    # I
        .annotation build Lcom/android/camera/protocol/ModeProtocol$RecordState$PostAction;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostSaving: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingState"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v2

    const/16 v3, 0xd0

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setConfigMenuResetWhenRestartmode()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showConfigMenu()V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xaf

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v2, 0xa6

    const/16 v4, 0xb6

    const/4 v5, 0x0

    const/16 v6, 0xb0

    if-eq p0, v2, :cond_9

    const/16 v2, 0xad

    const-wide/16 v7, -0x1

    const v9, 0x7f110894

    const/16 v10, 0x8

    if-eq p0, v2, :cond_6

    if-eq p0, v6, :cond_5

    const/16 v2, 0xb8

    if-eq p0, v2, :cond_b

    const/16 v2, 0xbb

    if-eq p0, v2, :cond_4

    if-eqz v1, :cond_3

    const/4 p0, 0x2

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    :cond_3
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPostAction(I)V

    goto/16 :goto_1

    :cond_4
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPostAction(I)V

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    invoke-interface {v1, v10, v9, v7, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xd8

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->resetShootUI()V

    goto :goto_1

    :cond_6
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPostAction(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    invoke-interface {v1, v10, v9, v7, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    goto :goto_1

    :cond_9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportPanorama2X()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    :cond_a
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->resetShootUI()V

    :cond_b
    :goto_1
    return-void
.end method

.method public onPrepare()V
    .locals 10

    const-string v0, "RecordingState"

    const-string v1, "onPrepare: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideExtraMenu()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu()V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v1

    const/16 v2, 0xb6

    const/16 v3, 0xd4

    const/16 v4, 0xbb

    const/16 v5, 0xb3

    if-eq v1, v5, :cond_7

    const/16 v6, 0xa2

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPrepare()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v7

    const/16 v8, 0xab

    invoke-virtual {v7, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v7

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTimerBurstShutter()V

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()V

    :goto_0
    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilterView()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilterView()Z

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v6

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0xe3

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;

    if-eqz v6, :cond_8

    invoke-interface {v6, v8}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;->subscribe(I)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0x3a3

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->processingPrepare()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPrepare()V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0xe6

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->processingPrepare()V

    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v6

    const/16 v7, 0xa3

    const/4 v8, 0x1

    if-eq v6, v7, :cond_10

    const/16 v7, 0xb0

    const/16 v9, 0xa6

    if-eq v6, v9, :cond_f

    if-eq v6, v7, :cond_d

    if-eq v6, v4, :cond_c

    if-eq v6, v3, :cond_b

    const/16 v2, 0xd7

    if-eq v6, v2, :cond_b

    const/16 v2, 0xad

    if-eq v6, v2, :cond_12

    const/16 v2, 0xae

    if-eq v6, v2, :cond_b

    if-eq v6, v5, :cond_12

    const/16 v2, 0xb4

    if-eq v6, v2, :cond_9

    const/16 v2, 0xb7

    if-eq v6, v2, :cond_b

    const/16 v2, 0xb8

    if-eq v6, v2, :cond_b

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result p0

    if-nez p0, :cond_12

    if-eqz v0, :cond_12

    invoke-interface {v0, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v2, 0xb5

    invoke-virtual {p0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->onRecordingPrepare()V

    :cond_a
    invoke-interface {v0, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_2

    :cond_b
    if-eqz v0, :cond_12

    invoke-interface {v0, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x1a5

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;

    if-eqz p0, :cond_12

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;->onRecordingPrepare()V

    goto :goto_2

    :cond_d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p0, :cond_e

    invoke-interface {p0, v8}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearIndicator(I)V

    :cond_e
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xd8

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;

    if-eqz p0, :cond_12

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->setShootingUI()V

    goto :goto_2

    :cond_f
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setShootUI()V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportPanorama2X()Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p0, :cond_12

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    if-eqz v0, :cond_12

    const/4 p0, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    goto :goto_2

    :cond_10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v2, 0xc2

    invoke-virtual {p0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p0, :cond_11

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_11
    if-eqz v0, :cond_12

    invoke-interface {v0, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    :cond_12
    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_13

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideLeftTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideRightTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideCenterTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directHideLeftImageIntro()V

    :cond_13
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_14

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_14
    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v0, "RecordingState"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v2, 0xae

    const/4 v3, 0x4

    if-eq p0, v2, :cond_3

    const/16 v2, 0xb3

    if-eq p0, v2, :cond_2

    const/16 v2, 0xb7

    if-eq p0, v2, :cond_3

    const/16 v2, 0xbb

    if-eq p0, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p0, v2, :cond_0

    const/16 v2, 0xd7

    if-eq p0, v2, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingResume()V

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingResume()V

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    invoke-interface {v0, p0, p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->enableStopButton(ZZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xe6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->processingResume()V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingResume()V

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xab

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()V

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideLeftTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideRightTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideCenterTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directHideLeftImageIntro()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 7

    const-string v0, "RecordingState"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/16 v4, 0x8

    invoke-direct {p0, v2, v4}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->hideHint()V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/4 v5, 0x7

    const/4 v6, 0x0

    sparse-switch p0, :sswitch_data_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    goto/16 :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x3a3

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->processingStart()V

    if-eqz v1, :cond_0

    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    goto/16 :goto_0

    :sswitch_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    if-eqz v1, :cond_0

    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    goto/16 :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0x1a4

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    goto/16 :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x1a2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->processingStart()V

    goto :goto_0

    :sswitch_4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    invoke-interface {v2, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMusicClose(Z)V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xe6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->processingStart()V

    goto :goto_0

    :sswitch_6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xd8

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;

    if-eqz p0, :cond_0

    const v0, 0x7f110952

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$WideSelfieProtocol;->updateHintText(I)V

    goto :goto_0

    :sswitch_7
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    invoke-interface {v2, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMusicClose(Z)V

    goto :goto_0

    :sswitch_8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object p0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedStringIdIgnoreClose(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v4, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideNearRangeTip()V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa3 -> :sswitch_9
        0xac -> :sswitch_8
        0xae -> :sswitch_7
        0xb0 -> :sswitch_6
        0xb3 -> :sswitch_5
        0xb7 -> :sswitch_4
        0xb9 -> :sswitch_3
        0xbb -> :sswitch_2
        0xd0 -> :sswitch_1
        0xd4 -> :sswitch_0
        0xd7 -> :sswitch_7
    .end sparse-switch
.end method

.method public prepareCreateMimoji()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xab

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingMimojiPrepare()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    const/16 v0, 0x8

    const-string v1, "1"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(ILjava/lang/String;Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideLeftTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideRightTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directHideCenterTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directHideLeftImageIntro()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    return-void

    nop

    :array_0
    .array-data 4
        0xc5
        0xc1
        0xa2
    .end array-data
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method protected updateZoomRatioToggleButtonState(Z)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->setRecordingOrPausing(Z)V

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    :cond_3
    :goto_1
    return-void
.end method
