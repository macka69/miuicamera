.class public Lcom/android/camera/module/impl/component/ConfigChangeImpl;
.super Ljava/lang/Object;
.source "ConfigChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigChangeImpl"


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mChain:Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;

.field private mChangeInterceptor:Lcom/android/camera/module/interceptor/ConfigChangeInterceptor;

.field private mRecordingClosedElements:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mChain:Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;

    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private applyConfig(II)V
    .locals 1

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAutoZoom()V

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchHandGesture()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCinematicAspectRatio(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMoonBacklight()V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSilhouette()V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMoonNight()V

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMoon(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSuperResolutionSwitch(I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDualWaterMarkSwitch()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideShine()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGenderAgeSwitch(I)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRawSwitch(I)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMagicMirrorSwitch(I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGroupSwitch(I)V

    goto/16 :goto_0

    :pswitch_e
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->beautyMutexHandle()V

    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configScene(I)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoFast()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMagicFocusSwitch()V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configHHTSwitch(I)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGradienterSwitch(I)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTiltSwitch(I)V

    goto/16 :goto_0

    :pswitch_14
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configColorEnhance(I)V

    goto/16 :goto_0

    :pswitch_15
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentMode(I)V

    goto/16 :goto_0

    :pswitch_16
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoSubtitle()V

    goto/16 :goto_0

    :pswitch_17
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configReferenceLineSwitch(I)V

    goto/16 :goto_0

    :pswitch_18
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSuperEIS()V

    goto/16 :goto_0

    :pswitch_19
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configBack()V

    goto/16 :goto_0

    :pswitch_1a
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVV()V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configUltraPixelPortrait(I)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraWideBokeh()V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveShotSwitch(I)V

    goto/16 :goto_0

    :pswitch_1e
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraWide()V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCenterMarkSwitch(I)V

    goto/16 :goto_0

    :pswitch_20
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiAudioSingle()V

    goto/16 :goto_0

    :pswitch_21
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configESPDisplay()V

    goto/16 :goto_0

    :pswitch_22
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideManualPictureStyle()V

    goto/16 :goto_0

    :pswitch_23
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCloneUseGuide()V

    goto/16 :goto_0

    :pswitch_24
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiAudio()V

    goto/16 :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMultiCamReselect()V

    goto/16 :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRemoteCamera()V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideMasterFilter()V

    goto/16 :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSpeechShutter()V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRGBHistogramSwitch(I)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoLogSwitch(I)V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configExposureFeedbackSwitch(I)V

    goto/16 :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMacroMode()V

    goto/16 :goto_0

    :sswitch_8
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoBokehSwitch(I)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showSetting()V

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAIWatermark(I)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideShine()V

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraPixel(I)V

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    goto :goto_0

    :sswitch_e
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiSceneSwitch(I)V

    goto :goto_0

    :sswitch_f
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFocusPeakSwitch(I)V

    goto :goto_0

    :sswitch_10
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->exitNightInCaptureMode()V

    goto :goto_0

    :sswitch_11
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiEnhancedVideo(I)V

    goto :goto_0

    :sswitch_12
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configIntoWorkspace()V

    goto :goto_0

    :sswitch_13
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAi108()V

    goto :goto_0

    :sswitch_14
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    goto :goto_0

    :sswitch_15
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configPanoramaDirection()V

    goto :goto_0

    :sswitch_16
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiAudio()V

    goto :goto_0

    :sswitch_17
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configNearRangeMode()V

    goto :goto_0

    :sswitch_18
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configIDCard()V

    goto :goto_0

    :sswitch_19
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSuperEISPro()V

    goto :goto_0

    :sswitch_1a
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$GWX4IOF_gWQE4hqP-nT1zeEuWtk;

    invoke-direct {p2, p0}, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$GWX4IOF_gWQE4hqP-nT1zeEuWtk;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideShine()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configPortraitSwitch(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGif(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showMimojiPanel(I)Z

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa4 -> :sswitch_1a
        0xa5 -> :sswitch_19
        0xa6 -> :sswitch_18
        0xa7 -> :sswitch_17
        0xa8 -> :sswitch_16
        0xa9 -> :sswitch_15
        0xaa -> :sswitch_14
        0xab -> :sswitch_13
        0xac -> :sswitch_12
        0xaf -> :sswitch_11
        0xba -> :sswitch_10
        0xc7 -> :sswitch_f
        0xc9 -> :sswitch_e
        0xcb -> :sswitch_d
        0xd1 -> :sswitch_c
        0xd4 -> :sswitch_b
        0xdf -> :sswitch_a
        0xe1 -> :sswitch_9
        0xf3 -> :sswitch_8
        0xff -> :sswitch_7
        0x102 -> :sswitch_6
        0x104 -> :sswitch_5
        0x105 -> :sswitch_4
        0x106 -> :sswitch_3
        0x107 -> :sswitch_2
        0x200 -> :sswitch_1
        0x201 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xcd
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd7
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xe3
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xe9
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xf6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xfb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyConfigValue(ILjava/lang/String;)V
    .locals 4

    const/16 v0, 0xad

    if-eq p1, v0, :cond_11

    const/16 v0, 0xae

    if-eq p1, v0, :cond_10

    const/16 v0, 0xb9

    if-eq p1, v0, :cond_f

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_e

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_d

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_c

    const/16 v0, 0xd2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    const/16 v0, 0xd5

    if-eq p1, v0, :cond_a

    const/16 v0, 0xe2

    if-eq p1, v0, :cond_9

    const/16 v0, 0xe4

    if-eq p1, v0, :cond_8

    const/16 v0, 0xf6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xdd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xde

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDualVideo(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentModeValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, 0x333b01

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    const v1, 0x63f6418

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "night"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    move v1, v3

    goto :goto_1

    :cond_4
    const-string v0, "moon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move v1, p1

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMoonNight()V

    goto :goto_2

    :cond_7
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMoon(Z)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTilt(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerSwitch(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSlowQuality(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-virtual {p0, v1, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRatio(ZLjava/lang/String;)V

    goto :goto_2

    :cond_c
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoQuality(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFPS960(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveVideoQuality(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configReferenceSwitch(Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoSubFps(Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    invoke-direct {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoSubQuality(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private beautyMutexHandle()V
    .locals 0

    return-void
.end method

.method private changeMode(I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore changeMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private changeModeWithoutConfigureData(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method private checkZoomWhenChangeQuality(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;IZLjava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_2

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p3, p3, v0

    if-gez p3, :cond_0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p0

    invoke-virtual {p1, p2, p0, p4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(IILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p3

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    cmpl-float p0, p3, p0

    if-lez p0, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportVideoToTele()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p0

    invoke-virtual {p1, p2, p0, p4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(IILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    :cond_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportVideoToUltraTele()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p0

    invoke-virtual {p1, p2, p0, p4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(IILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    :cond_2
    :goto_0
    return-void
.end method

.method private clearToast()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->setPortraitHintVisible(I)V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideLeftTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideRightTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideCenterTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->directHideLyingDirectHint()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigQrCodeTip()Z

    :cond_0
    return-void
.end method

.method private closeVideoBeautifyForTrueVideoBokeh(ILjava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Optional<",
            "Lcom/android/camera/module/BaseModule;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xa2

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isDualCameraShineVideoBokeh()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$m7Zzb5XqNhb9yJ4kX0gmQZaTyBU;

    invoke-direct {p1, p0}, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$m7Zzb5XqNhb9yJ4kX0gmQZaTyBU;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {p2, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private closeVideoFast()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string p0, "pref_video_speed_fast_key"

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private configAIWatermark(I)V
    .locals 10

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa3

    const/16 v2, 0xa5

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v3, 0xbc

    if-eq v0, v3, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v4

    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    if-nez v4, :cond_2

    return-void

    :cond_2
    const-string v6, "ai_watermark"

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    xor-int/2addr v4, v7

    sget-object v6, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "configAIWatermark: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_4

    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentMode(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->watermarkToast()V

    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    :cond_4
    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->resetAIWatermark(Z)V

    invoke-virtual {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setWatermarkEnable(Z)V

    if-ne v7, p1, :cond_6

    if-eqz v4, :cond_5

    const-string p1, "ai_watermark_open"

    goto :goto_0

    :cond_5
    const-string p1, "ai_watermark_close"

    :goto_0
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackAIWatermarkClick(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateASDForWatermark()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBogusCameraId()I

    move-result p1

    invoke-virtual {v3, p1, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setEnable(IZ)V

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1x1"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/camera/AppController;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    return-void
.end method

.method private configAiAudio()V
    .locals 7

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const-string v1, "ai_aduio_new_desc"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    move v1, v2

    :cond_2
    const/16 v4, 0xb4

    if-ne v0, v4, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "macro"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v1, "wide"

    invoke-virtual {v4, v0, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    const-string v1, "ai_audio"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xac

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioNew()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->isSwitchOn(I)Z

    move-result v1

    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configAiAudio:isSwitchOn -> enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiAudioNew(Z)V

    xor-int/lit8 v4, v1, 0x1

    invoke-static {v0, v4}, Lcom/android/camera/CameraSettings;->setAiAudioNewEnabled(IZ)V

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configAiAudio:setAiAudioNewEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1106e5

    invoke-interface {p0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setShow(Z)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v1

    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configAiAudio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentStringRes(I)I

    move-result v0

    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    goto :goto_2

    :cond_7
    const/16 v3, 0x8

    :goto_2
    invoke-interface {p0, v3, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioBGHint(II)V

    return-void
.end method

.method private configAiAudioSingle()V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const-string v1, "ai_audio_single"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    const-string v1, "ai_aduio_single_desc"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xac

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioSingEnabled(I)Z

    move-result v1

    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configAiAudioSingle -> enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackAiAudioSingle(Z)V

    xor-int/lit8 v3, v1, 0x1

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->setAiAudioSingEnabled(IZ)V

    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configAiAudioSingle:setAiAudioSingEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioSingEnabled(I)Z

    move-result v0

    const v1, 0x7f1107c0

    invoke-interface {p0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setShow(Z)V

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :goto_0
    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioSingleBGHint(II)V

    return-void
.end method

.method private configAiEnhancedVideo(I)V
    .locals 7

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v1

    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configAiEnhancedVideo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const-string v3, "attr_video_ai"

    const/16 v4, 0xaf

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0, v6}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    new-array p1, v5, [I

    aput v4, p1, v6

    invoke-interface {v2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-static {v3, v6}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCommonClickB(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v5}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    new-array v1, v5, [I

    aput v4, v1, v6

    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-static {v3, v5}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCommonClickB(Ljava/lang/String;Z)V

    new-array v1, v5, [I

    const/16 v2, 0xd8

    aput v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    invoke-static {v0, v6}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    invoke-static {v0, v6}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xc2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->dismiss(II)Z

    :cond_3
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    :cond_4
    :goto_0
    const/16 p1, 0xcc

    const/16 v1, 0xa2

    if-ne v0, p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    :cond_5
    invoke-direct {p0, v1, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateLeftTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private configAiSceneSwitch(I)V
    .locals 14

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v3}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xac

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/16 v6, 0xc9

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq p1, v9, :cond_2

    if-eq p1, v7, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configAiSceneSwitch: MUTEX false"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v8}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(IZ)V

    new-array v0, v9, [I

    aput v6, v0, v8

    invoke-interface {v5, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    goto/16 :goto_1

    :cond_2
    sget-object v10, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "configAiSceneSwitch: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v12, v4, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "aiCC"

    const-string v11, "aiScene"

    const-string v12, "ai"

    const/4 v13, 0x0

    if-nez v4, :cond_3

    const v1, 0x7f110664

    invoke-interface {v5, v12, v8, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    invoke-static {v3, v9}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(IZ)V

    goto :goto_0

    :cond_3
    const v0, 0x7f110663

    const/16 v4, 0x8

    invoke-interface {v5, v12, v4, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    invoke-static {v3, v8}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(IZ)V

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0, v8, v4}, Lcom/android/camera/module/Camera2Module;->closeMoonMode(II)V

    :cond_4
    :goto_0
    new-array v0, v9, [I

    aput v6, v0, v8

    invoke-interface {v5, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configGroupSwitch(I)V

    invoke-interface {v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    new-array v1, v9, [I

    const/16 v3, 0x24

    aput v3, v1, v8

    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_6
    if-ne p1, v9, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraPixel(I)V

    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigQrCodeTip()Z

    :cond_8
    if-ne p1, v9, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configUltraPixelPortrait(I)V

    :cond_9
    return-void
.end method

.method private configAutoZoom()V
    .locals 8

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "auto_zoom"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    sget-object v5, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configAutoZoom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const/16 v5, 0xfd

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    new-array v0, v3, [I

    aput v5, v0, v6

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    goto/16 :goto_1

    :cond_2
    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    new-array v4, v3, [I

    aput v5, v4, v6

    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    new-array v1, v3, [I

    const/16 v4, 0xd8

    aput v4, v1, v6

    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    invoke-direct {p0, v2, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoBeautifyForTrueVideoBokeh(ILjava/util/Optional;)V

    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-static {v1, v6}, Lcom/android/camera/CameraSettings;->setAiAudioNewEnabled(IZ)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v1

    const-string v4, "normal"

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :goto_0
    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    const/4 v3, 0x5

    invoke-interface {v0, v1, v3}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->dismiss(II)Z

    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    :cond_7
    const/16 v0, 0xcc

    const/16 v1, 0xa2

    if-ne v2, v0, :cond_8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    :cond_8
    invoke-direct {p0, v1, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateLeftTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private configBack()V
    .locals 4

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configBack"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_7

    const/16 v1, 0xb6

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xbd

    if-eq v0, v1, :cond_4

    const/16 v1, 0xcf

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "value_time_freeze_exit_preview"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFilmDreamBack()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDollyZoomBack()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCloneModeBack()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configIDCardBack()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVVBack()V

    :goto_0
    return-void
.end method

.method private configCloneModeBack()V
    .locals 1

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v0, "configCloneModeBack"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x1a2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "value_clone_click_back"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->showExitConfirm(Z)V

    :cond_0
    return-void
.end method

.method private configCloneUseGuide()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneAction;->onCloneGuideClicked()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configCloneUseGuide"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 v1, 0xb9

    if-eq p0, v1, :cond_5

    const/16 v1, 0xbd

    if-eq p0, v1, :cond_4

    const/16 v1, 0xcf

    if-eq p0, v1, :cond_3

    const/16 v1, 0xd5

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmUseGuideClick()V

    const/16 p0, 0x26

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmUseGuideClick()V

    const/16 p0, 0x23

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmUseGuideClick()V

    const/16 p0, 0x27

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_0

    :cond_5
    const/16 p0, 0x17

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v0, :cond_6

    const-string/jumbo p0, "value_clone_click_photo_guide"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v0, :cond_7

    const-string/jumbo p0, "value_clone_click_video_guide"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/camera/fragment/clone/Config;->getCloneMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v0, :cond_8

    const-string/jumbo p0, "value_clone_click_freeze_frame_guide"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackCloneClick(Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private configColorEnhance(I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isEnabled(I)Z

    move-result v0

    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configColorEnhance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f110814

    if-eqz v0, :cond_2

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->setEnabled(ZI)V

    const/16 v0, 0x8

    invoke-interface {v2, v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertProColourHint(II)V

    const-string/jumbo p1, "value_pro_color_close"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackProColorClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4, v4}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->setEnabled(ZI)V

    invoke-interface {v2, v3, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertProColourHint(II)V

    const-string/jumbo p1, "value_pro_color_open"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackProColorClick(Ljava/lang/String;)V

    :goto_0
    new-array p1, v4, [I

    const/16 v0, 0xe3

    aput v0, p1, v3

    invoke-interface {v2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    new-array p1, v4, [I

    const/16 v0, 0x4a

    aput v0, p1, v3

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method private configDocumentMode(I)V
    .locals 7

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDocumentMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDocumentMode2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    return-void

    :cond_4
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v2, "configDocumentMode: MUTEX false"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setDocumentModeOn(Z)V

    move v2, v5

    goto :goto_1

    :cond_5
    const-string p1, "p"

    if-eqz v2, :cond_6

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setDocumentModeOn(Z)V

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    move v2, v5

    goto :goto_0

    :cond_6
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setDocumentModeOn(Z)V

    new-array v2, v4, [I

    const/16 v6, 0xc4

    aput v6, v2, v5

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveShotSwitch(I)V

    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTiltSwitch(I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraPixel(I)V

    :cond_7
    move v2, v4

    :goto_0
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configDocumentMode: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 p1, 0xdd

    if-eqz v2, :cond_8

    invoke-interface {v1, v4, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$-poHM9oCE8WJNGxST3_d_QGEbJ0;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$-poHM9oCE8WJNGxST3_d_QGEbJ0;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_8
    invoke-interface {v1, v5, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    :goto_2
    return-void
.end method

.method private configDocumentModeValue(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configDocumentModeValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object p0

    const/16 v0, 0xba

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method private configDollyZoomBack()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x2a4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DollyZoomProcess;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private configDualVideo(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configDualVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p0

    invoke-static {p1}, Lcom/android/camera/dualvideo/recorder/RecordType;->getTypeByName(Ljava/lang/String;)Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setRecordType(Lcom/android/camera/dualvideo/recorder/RecordType;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa2

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->adjustViewBackground()V

    return-void
.end method

.method private configDualVideoUserGuide()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$ntpxnFx3qiq61PT3dcTWxewDujM;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$ntpxnFx3qiq61PT3dcTWxewDujM;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configESPDisplay()V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setESPSDisplaywitch(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v2, :cond_1

    new-array v3, v1, [I

    const/4 v4, 0x0

    const/16 v5, 0xb5

    aput v5, v3, v4

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0x3b1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->show(I)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->cancel()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigESPDisplay()V

    return-void
.end method

.method private configFilmDreamBack()V
    .locals 1

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v0, "configFilmDreamBack"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x3a3

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->showExitConfirm()V

    :cond_0
    return-void
.end method

.method private configGif(I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configGif: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xf6

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->changeToGif(Z)V

    :cond_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setGifSwitch(Z)V

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiRecordState(I)V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xac

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    new-array v1, v1, [I

    const/16 v3, 0xa2

    aput v3, v1, v2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_3
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configIDCardBack()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xe9

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$IDCardModeProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$IDCardModeProtocol;->callBackEvent()V

    return-void
.end method

.method private configIntoWorkspace()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    const-string/jumbo v1, "vlog2"

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configIntoWorkspace"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0xfffc

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/FragmentVVPreview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->controlPlay(Z)V

    :cond_1
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;-><init>()V

    const/4 v1, 0x2

    const v2, 0x7f120159

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget-object v1, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private configLiveVideoQuality(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configLiveVideoQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    const-string v3, "pref_mi_live_quality"

    invoke-static {v3, v2, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoQuality(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 v2, 0xa0

    invoke-virtual {v0, v2, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configMacroMode()V
    .locals 12

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configMacroMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    new-array v6, v3, [I

    const/16 v7, 0xd8

    const/4 v8, 0x0

    aput v7, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    invoke-static {v1, v8}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    invoke-static {v1, v8}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v6}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    :cond_1
    const/16 v7, 0xc2

    if-eqz v2, :cond_4

    const/16 v9, 0xa2

    if-eq v1, v9, :cond_2

    const/16 v9, 0xa9

    if-ne v1, v9, :cond_4

    :cond_2
    invoke-direct {p0, v8}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    invoke-static {v8}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v9

    check-cast v9, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v9, :cond_3

    invoke-interface {v9}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x3

    invoke-interface {v9, v10}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v9

    const/16 v10, 0x3a6

    invoke-virtual {v9, v10}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v9

    check-cast v9, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    if-eqz v9, :cond_4

    invoke-interface {v9}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x2

    const/4 v11, 0x5

    invoke-interface {v9, v10, v11}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->dismiss(II)Z

    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoBeautifyForTrueVideoBokeh(ILjava/util/Optional;)V

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->set4K120FpsOff(I)V

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1, v8}, Lcom/android/camera/CameraSettings;->setAiAudioNewEnabled(IZ)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v0

    const-string v9, "normal"

    invoke-virtual {v0, v1, v9}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :cond_6
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const-string v0, "macro"

    invoke-direct {p0, v0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    const-string v9, "m"

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOn(I)V

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->isMacroHdrMutex()Z

    move-result v0

    if-eqz v0, :cond_9

    new-array v0, v3, [I

    aput v7, v0, v8

    invoke-virtual {p0, v9, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->setRecordingClosedElements([I)V

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->isMacroHdrMutex()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    invoke-virtual {p0, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v9

    invoke-virtual {v9, v1, v6}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigFlashIfHdrChanged(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    new-array v3, v3, [I

    const/16 v6, 0xc1

    aput v6, v3, v8

    invoke-interface {v4, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_8
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    :cond_9
    :goto_1
    invoke-direct {p0, v1, v8}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xb6

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v2, :cond_b

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directHideTipImage()V

    invoke-interface {p0, v8}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directShowOrHideLeftTipImage(Z)V

    :cond_a
    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    goto :goto_2

    :cond_b
    if-eqz v3, :cond_c

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v8

    :cond_c
    if-eqz p0, :cond_d

    if-nez v8, :cond_d

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_d
    if-eqz v0, :cond_10

    if-nez v8, :cond_10

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result p0

    if-nez p0, :cond_f

    if-ne v1, v5, :cond_e

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportMacroModeInSlowMotion()Z

    move-result p0

    if-nez p0, :cond_f

    :cond_e
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    :cond_f
    if-eqz v4, :cond_10

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    :cond_10
    :goto_2
    return-void
.end method

.method private configMoon(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$F3prJk3iR5O0F8UjP1aHOVi2M3M;

    invoke-direct {v0, p1}, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$F3prJk3iR5O0F8UjP1aHOVi2M3M;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configMoonBacklight()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$kPGYtz9VPo1LsU3HOQn3pKBHG58;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$kPGYtz9VPo1LsU3HOQn3pKBHG58;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configMoonNight()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$2V_a5n57sjrdEfV423pi7HuC6RI;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$2V_a5n57sjrdEfV423pi7HuC6RI;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configMultiCamReselect()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configMultiCamReselect: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$OOYSAZlJpiiAvvUBbtaOJD5eUB8;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$OOYSAZlJpiiAvvUBbtaOJD5eUB8;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configPanoramaDirection()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isPanoramaVertical(Landroid/content/Context;)Z

    move-result p0

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configPanoramaDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->toggleCaptureDirection()V

    :cond_0
    return-void
.end method

.method private configProAmbilightUseGuide()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configProAmbilightUseGuide"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/fragment/FragmentDescription;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/fragment/manually/FragmentAmbilightDescription;

    invoke-direct {v0}, Lcom/android/camera/fragment/manually/FragmentAmbilightDescription;-><init>()V

    const/4 v1, 0x2

    const v2, 0x7f1200c1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget-object v1, Lcom/android/camera/fragment/FragmentDescription;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method private configReferenceLineSwitch(I)V
    .locals 6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_referenceline_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v4

    const/16 v5, 0xb6

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configReferenceLineSwitch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, p1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackReferenceLineChanged(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigGradienter()Lcom/android/camera/data/data/config/ComponentConfigGradienter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "off"

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1, v2}, Lcom/android/camera/module/BaseModule;->onGradienterSwitched(Z)V

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->hideReferenceGradienter()V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateReferenceGradienterSwitched()V

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateCenterMarkSwitched()V

    :cond_5
    :goto_1
    return-void
.end method

.method private configRemoteCamera()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$KmNhpqfYg3agefjL0n_AEhkaMrc;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$KmNhpqfYg3agefjL0n_AEhkaMrc;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configSilhouette()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$bTbZ3LYJ7NPZY8Bg05o4q2OOy6A;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$bTbZ3LYJ7NPZY8Bg05o4q2OOy6A;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private configSlowQuality(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotionQuality()Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configSlowQuality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackSlowMotionQuality(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configSpeechShutter()V
    .locals 6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSpeechShutter()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSpeechShutterOpen()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configSpeechShutter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setSpeechShutterStatus(Z)V

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackSpeechShutterStatus(Z)V

    if-eqz v1, :cond_2

    const-string/jumbo v3, "speech_shutter_desc"

    invoke-direct {p0, v3, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 v0, 0xfe

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd1

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd2

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 v1, 0x0

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p0, :cond_5

    invoke-interface {p0, v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingSpeechShutter(Z)V

    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;

    if-eqz p0, :cond_6

    invoke-interface {p0, v1}, Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;->processingSpeechShutter(Z)V

    :cond_6
    return-void
.end method

.method private configSuperEIS()V
    .locals 9

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v2, "super_eis"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v5

    sget-object v6, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configSuperEIS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const/16 v6, 0xda

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    invoke-static {v4, v7}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    new-array v0, v3, [I

    aput v6, v0, v7

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    goto :goto_0

    :cond_2
    invoke-static {v4, v3}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    new-array v8, v3, [I

    aput v6, v8, v7

    invoke-interface {v1, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    new-array v6, v3, [I

    const/16 v8, 0xd8

    aput v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v4}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    :cond_3
    invoke-static {v4, v7}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    invoke-static {v4, v7}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    :cond_4
    invoke-static {v4, v7}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0x3a6

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    const/4 v6, 0x5

    invoke-interface {v0, v3, v6}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->dismiss(II)Z

    :cond_5
    :goto_0
    xor-int/lit8 v0, v5, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackSuperEISChanged(Z)V

    const/16 v0, 0xcc

    const/16 v3, 0xa2

    if-ne v4, v0, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    :cond_6
    invoke-direct {p0, v3, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v5, :cond_7

    const/16 v0, 0x8

    const v3, 0x7f110880

    invoke-interface {v1, v2, v0, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_7
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateLeftTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private configSuperEISPro()V
    .locals 8

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v2, "super_eis_pro"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configSuperEISPro: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    new-array v5, v3, [I

    const/16 v6, 0xa5

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    const-string v1, "off"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-array v1, v3, [I

    const/16 v4, 0xd8

    aput v4, v1, v7

    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    :cond_2
    invoke-static {v2, v7}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    invoke-static {v2, v7}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    invoke-static {v2, v7}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    :cond_3
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    :cond_4
    const/16 v0, 0xcc

    const/16 v1, 0xa2

    if-ne v2, v0, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    :cond_5
    invoke-direct {p0, v1, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateLeftTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private configSwitchHandGesture()V
    .locals 6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportHandGesture()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configSwitchHandGesture: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    const-string v3, "hand_gesture_desc"

    invoke-direct {p0, v3, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    :cond_2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setHandGestureStatus(Z)V

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/Camera2Module;->onHanGestureSwitched(Z)V

    :cond_3
    return-void
.end method

.method private configSwitchUltraWide()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configSwitchUltraWide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    :cond_1
    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->setUltraWideConfig(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LensProtocol;

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/android/camera/protocol/ModeProtocol$LensProtocol;->onSwitchLens(Z)V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xaf

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_4

    const/16 v1, 0xd

    if-eqz v0, :cond_3

    const v0, 0x7f1108fb

    const/4 v2, 0x7

    const/16 v3, 0x1f4

    invoke-interface {p0, v1, v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(IIII)V

    goto :goto_0

    :cond_3
    const v0, 0x7f1108f7

    const/4 v2, 0x6

    invoke-interface {p0, v1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    :goto_0
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigQrCodeTip()Z

    :cond_4
    return-void
.end method

.method private configSwitchUltraWideBokeh()V
    .locals 7

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    const-string v3, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configSwitchUltraWideBokeh: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const-string/jumbo v5, "ultra_wide_bokeh"

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const v2, 0x7f1108f5

    invoke-interface {v0, v5, v4, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v5, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    const/16 v2, 0x8

    const v3, 0x7f1108f6

    invoke-interface {v0, v5, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private configTilt(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v0, v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configTilt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/module/Camera2Module;->showOrHideChip(Z)V

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->onTiltShiftSwitched(Z)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->setDrawTilt(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xaf

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigQrCodeTip()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private configTimerBurst(I)V
    .locals 8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v0

    const v1, 0x7f1108d7

    const/16 v2, 0xac

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 p1, 0x1

    xor-int/2addr v0, p1

    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configTimerBurst: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setTimerBurstEnable(Z)V

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/BaseModule;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTiltSwitch(I)V

    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveShotSwitch(I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    new-array p1, p1, [I

    const/16 v2, 0xd1

    aput v2, p1, v3

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-direct {p0, p1, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    :cond_2
    invoke-interface {v0, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTimerBurstHint(II)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "configTimerBurst: MUTEX false"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->muteTimerConfig()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez p0, :cond_4

    return-void

    :cond_4
    const/16 p1, 0x8

    invoke-interface {p0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTimerBurstHint(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method private configVV()V
    .locals 10

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const v1, 0x7f0a0088

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v1

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/16 v4, 0xa2

    const/16 v5, 0xac

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0xfffa

    if-eq v1, v8, :cond_9

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v8

    check-cast v8, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mi/config/DataItemFeature;->isSupportLiveVVModeInTop()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearVideoUltraClear()V

    :cond_0
    const/16 v8, 0xa9

    if-ne v1, v8, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    move v8, v6

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    invoke-static {v1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    move v8, v6

    :cond_2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v7}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    move v8, v6

    :cond_3
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1, v7}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    move v8, v6

    :cond_4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1, v7}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    move v8, v6

    :cond_5
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    move v8, v6

    :cond_6
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    move v8, v6

    :cond_7
    if-eqz v8, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Lcom/android/camera/CameraSettings;->setRetainZoom(FI)V

    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v3

    const-string v9, "6"

    invoke-virtual {v3, v9}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setForceValueOverlay(Ljava/lang/String;)V

    invoke-static {v1, v7}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setForceValueOverlay(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_a

    const/16 v3, 0x8

    const v8, 0x7f110944

    invoke-interface {v1, v3, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTopHint(II)V

    :cond_a
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckVideoUltraClearTip()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckVideo4KHDR10P()V

    move v8, v7

    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-array v1, v6, [I

    const/16 v2, 0xd8

    aput v2, v1, v7

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    new-array v1, v6, [I

    const/16 v2, 0x100

    aput v2, v1, v7

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    if-eqz v8, :cond_c

    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :cond_c
    return-void
.end method

.method private configVVBack()V
    .locals 1

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v0, "configVVBack"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xe6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->showExitConfirm()V

    :cond_0
    return-void
.end method

.method private configVideoBokehSwitch(I)V
    .locals 7

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    const-string v2, "pref_video_bokeh_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/DataItemConfig;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configVideoBokehSwitch: switchOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "attr_BOKEH"

    const/4 v6, 0x0

    if-nez v3, :cond_1

    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/DataItemConfig;->switchOn(Ljava/lang/String;)V

    const-string v1, "on"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/DataItemConfig;->switchOff(Ljava/lang/String;)V

    const-string v1, "off"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v4, 0xf3

    aput v4, v2, v6

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    const-string/jumbo p0, "video_bokeh"

    if-nez v3, :cond_2

    const p1, 0x7f110732

    invoke-interface {v0, p0, v6, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    const v1, 0x7f110731

    invoke-interface {v0, p0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :goto_1
    return-void
.end method

.method private configVideoHdrIfNeed()Z
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "hdr"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    const/16 v5, 0xa2

    if-ne v1, v5, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoHdr()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "attr_video_hdr"

    if-nez v4, :cond_3

    invoke-static {v5, v3}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCommonClickB(Ljava/lang/String;Z)V

    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "video Hdr mutex"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    new-array v4, v3, [I

    const/16 v5, 0xd8

    aput v5, v4, v2

    invoke-virtual {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v2

    const-string v4, "normal"

    invoke-virtual {v2, v1, v4}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v0

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lcom/android/camera/HybridZoomingSystem;->getMaxMainZoomRatio(F)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v4, v0

    if-gtz v5, :cond_2

    cmpg-float v0, v0, v2

    if-lez v0, :cond_4

    :cond_2
    invoke-static {v4, v1}, Lcom/android/camera/CameraSettings;->setRetainZoom(FI)V

    goto :goto_0

    :cond_3
    invoke-static {v5, v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCommonClickB(Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    return v3

    :cond_5
    return v2
.end method

.method private configVideoQuality(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xd8

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setComponentValue(ILjava/lang/String;)V

    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configVideoQuality: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    const-string v5, "pref_video_quality_key"

    invoke-static {v5, v4, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoQuality(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->checkZoomWhenChangeQuality(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;IZLjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configVideoSubFps(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configVideoSubFps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubFps()Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const-string v1, "120"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "8"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->checkZoomWhenChangeQuality(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;IZLjava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configVideoSubQuality(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configVideoSubQuality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const-string v1, "8"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubFps()Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "120"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    goto :goto_0

    :cond_0
    const-string v1, "3001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->openVideo8K()V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->checkZoomWhenChangeQuality(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;IZLjava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method private configVideoSubtitle()V
    .locals 8

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v3

    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configVideoSubtitle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackSubtitle(Z)V

    const/16 v4, 0xa2

    const/16 v5, 0xdc

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    new-array v0, v7, [I

    aput v5, v0, v6

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    goto :goto_0

    :cond_2
    invoke-static {v2, v7}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    new-array v3, v7, [I

    aput v5, v3, v6

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    const/16 v1, 0xd6

    if-eq v2, v1, :cond_4

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->set4K120FpsOff(I)V

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    new-array v1, v7, [I

    const/16 v3, 0xd8

    aput v3, v1, v6

    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    :cond_3
    invoke-static {v2, v6}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    :cond_4
    :goto_0
    const/16 v0, 0xcc

    if-ne v2, v0, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-direct {p0, v0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe7

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;->initPermission()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;->checkNetWorkStatus()V

    :cond_6
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateLeftTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    return-void
.end method

.method private conflictWithFlashAndHdr()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const-string v0, "pref_camera_hand_night_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const-string v0, "pref_camera_groupshot_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const-string v0, "pref_camera_super_resolution_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v0, "conflictWithFlashAndHdr return, BottomPopupTips is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->getCurrentBottomTipType()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getBaseModule()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private getState(ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->triggerSwitchAndGet(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getUpDistance()I
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xfd

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->getDistanceForWM()I

    move-result p0

    :goto_0
    move v1, p0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->getDistanceForWM()I

    move-result p0

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private hideTipMessage(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-lez p1, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->containTips(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_1
    return-void
.end method

.method private is4KHDR10P(I)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private is4KQuality(II)Z
    .locals 0

    const/16 p0, 0xf00

    if-lt p1, p0, :cond_0

    const/16 p0, 0x870

    if-lt p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private is8KQuality(II)Z
    .locals 0

    const/16 p0, 0x1e00

    if-lt p1, p0, :cond_0

    const/16 p0, 0x10e0

    if-lt p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isAlive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBeautyPanelShow()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xc2

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isChangeManuallyParameters()Z
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyWB()Lcom/android/camera/data/data/config/ComponentManuallyWB;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallyEV()Lcom/android/camera/data/data/config/ComponentManuallyEV;

    move-result-object v0

    invoke-virtual {v2, p0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v2

    invoke-virtual {v3, p0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v3

    invoke-virtual {v4, p0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v4

    invoke-virtual {v5, p0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v5

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result p0

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isShowMimojiView(Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const v0, 0x7f0a0092

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result p1

    const v0, 0xfff0

    if-ne p1, v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private isVideoRecoding(Lcom/android/camera/module/BaseModule;)Z
    .locals 0

    if-eqz p1, :cond_0

    instance-of p0, p1, Lcom/android/camera/module/VideoBase;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isRecording()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$applyConfig$0(Lcom/android/camera/module/BaseModule;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    const/16 v0, 0xb9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd5

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDualVideoUserGuide()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configProAmbilightUseGuide()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCloneUseGuide()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$closeMutexElement$24([ILcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_0
    return-void
.end method

.method private synthetic lambda$closeVideoBeautifyForTrueVideoBokeh$15(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getBogusCameraId()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$configBackSoftLightSwitch$21(Lcom/android/camera/module/BaseModule;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xac

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdr()V

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-virtual {p1, p0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x3a
    .end array-data
.end method

.method static synthetic lambda$configBokeh$20(Lcom/android/camera/module/BaseModule;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void

    :array_0
    .array-data 4
        0xb
        0x25
    .end array-data
.end method

.method static synthetic lambda$configDocumentMode$4(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetAiSceneInDocumentModeOn()V

    return-void
.end method

.method static synthetic lambda$configDualVideoUserGuide$2(Lcom/android/camera/module/BaseModule;)V
    .locals 1

    instance-of v0, p0, Lcom/android/camera/dualvideo/DualVideoGridModule;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/camera/dualvideo/DualVideoGridModule;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoGridModule;->addUserGuide()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$configDualWaterMarkSwitch$23(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method private synthetic lambda$configFlash$16(ZLcom/android/camera/module/BaseModule;)V
    .locals 6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xa2

    if-eq v1, v5, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    if-eq v1, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->resetMagneticInfo()V

    :cond_0
    if-eqz p1, :cond_1

    new-array p0, v3, [I

    const/16 p1, 0xb

    aput p1, p0, v4

    invoke-virtual {p2, p0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :cond_1
    new-array p0, v3, [I

    aput v2, p0, v4

    invoke-virtual {p2, p0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_0

    :cond_3
    new-array p0, v3, [I

    aput v2, p0, v4

    invoke-virtual {p2, p0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$configHdr$19(Lcom/android/camera/module/BaseModule;)V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void

    :array_0
    .array-data 4
        0xb
        0xa
        0x25
    .end array-data
.end method

.method static synthetic lambda$configMeter$17(Lcom/android/camera/module/BaseModule;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method static synthetic lambda$configMoon$9(ZLcom/android/camera/module/BaseModule;)V
    .locals 3

    instance-of v0, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(moon_mode) config moon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Lcom/android/camera/module/Camera2Module;->updateMoon(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$configMoonBacklight$7(Lcom/android/camera/module/BaseModule;)V
    .locals 2

    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configMoonBacklight"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateBacklight()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$configMoonNight$10(Lcom/android/camera/module/BaseModule;)V
    .locals 1

    instance-of v0, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMoon(Z)V

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v0, "(moon_mode) config moon night"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/camera/module/Camera2Module;->updateMoonNight()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$configMultiCamReselect$1(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    check-cast p0, Lcom/android/camera/dualvideo/DualVideoRecordModule;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->reselectCamera()V

    return-void
.end method

.method static synthetic lambda$configNearRangeMode$28(Lcom/android/camera/module/BaseModule;)V
    .locals 2

    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configNearRangeMode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/Camera2Module;->updateNearRangeMode(ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$configPortraitSwitch$22(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method static synthetic lambda$configRemoteCamera$3(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    check-cast p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchRemoteCamera()V

    return-void
.end method

.method static synthetic lambda$configSilhouette$8(Lcom/android/camera/module/BaseModule;)V
    .locals 2

    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configSilhouette"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->updateSilhouette()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$exitNightInCaptureMode$29(Lcom/android/camera/module/BaseModule;)V
    .locals 2

    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "exitNightInCaptureMode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/Camera2Module;->exitNightInCaptureMode()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$reCheckDocumentMode$5(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetAiSceneInDocumentModeOn()V

    return-void
.end method

.method private synthetic lambda$recheckVideoFps$6(Lcom/android/camera/module/BaseModule;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xac

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedStringIdIgnoreClose(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    :goto_0
    invoke-interface {v1, v3, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    const-string p1, "960fps_desc"

    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    const p0, 0x7f1103be

    invoke-interface {v1, p1, v2, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    :cond_5
    return-void
.end method

.method static synthetic lambda$resetMeter$18(Lcom/android/camera/module/BaseModule;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method static synthetic lambda$restoreAllMutexElement$25([ILcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method static synthetic lambda$restoreMutexFlash$26(Lcom/android/camera/module/BaseModule;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method static synthetic lambda$setEyeLight$13(Lcom/android/camera/module/BaseModule;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2d

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method static synthetic lambda$setLighting$12(Lcom/android/camera/module/BaseModule;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method static synthetic lambda$setSkinColor$14(Lcom/android/camera/module/BaseModule;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x29

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method static synthetic lambda$showOrHideShine$11(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getBogusCameraId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateAiScene$27(ZLcom/android/camera/module/BaseModule;)V
    .locals 1

    instance-of v0, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    const/4 p0, 0x0

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/module/Camera2Module;->closeMoonMode(II)V

    :cond_0
    return-void
.end method

.method private mutexBeautyBusiness(I)V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/16 v3, 0xd8

    aput v3, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v3

    const/16 v4, 0xaf

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateLeftTipImage()V

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideSwitchTip()V

    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateLeftTipImage()V

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideSwitchTip()V

    :cond_1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateLeftTipImage()V

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideSwitchTip()V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v3}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    const-string v3, "pref_video_bokeh_key"

    invoke-virtual {p0, v3}, Lcom/android/camera/data/data/config/DataItemConfig;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/camera/data/data/config/DataItemConfig;->switchOff(Ljava/lang/String;)V

    :cond_5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setProVideoLog(Z)V

    if-eqz v2, :cond_6

    new-array p0, v0, [I

    const/16 p1, 0x100

    aput p1, p0, v1

    invoke-interface {v2, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_6
    return-void
.end method

.method private openVideo8K()V
    .locals 8

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/statistic/CameraStatUtils;->track8KVideo(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    :cond_2
    const/4 v2, 0x1

    new-array v4, v2, [I

    const/16 v5, 0xd8

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->support8KMovie()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    :cond_3
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getActualCameraId()I

    move-result v4

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v5

    if-ne v4, v5, :cond_7

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->isSupportUltraTele()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->isSupportVideoToUltraTele()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v4

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v4

    :goto_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/config/DataItemFeature;->isSupportVideoToUltraTele()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v5

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v5

    :goto_1
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v7

    cmpl-float v4, v7, v4

    if-ltz v4, :cond_8

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    goto :goto_2

    :cond_7
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v4

    const-string/jumbo v5, "wide"

    invoke-virtual {v4, v3, v5}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :cond_8
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoBokehLevel()V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setProVideoLog(Z)V

    invoke-static {v3, v6}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    new-array p0, v2, [I

    const/16 v0, 0x100

    aput v0, p0, v6

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    const p0, 0x7f11072f

    invoke-interface {v1, v6, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    return-void
.end method

.method private persistFilter(I)V
    .locals 2

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persistFilter: filterId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setShaderEffect(I)V

    return-void
.end method

.method public static preload()V
    .locals 2

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "preload"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reConfigTipOfHdr(I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    const-string p1, "normal"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "live"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    invoke-interface {v0, v1, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isHDRShowing()Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x8

    invoke-interface {v0, p0, v1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {v0, v1, v1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private resetVideoBokehLevel()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setVideoBokehRatio(F)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setVideoBokehColorRetentionMode(I)V

    return-void
.end method

.method private resetVideoFilter()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setShaderEffect(I)V

    return-void
.end method

.method private setTipsState(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setTipsState(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private showDualController(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v1, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mi/config/DataItemFeature;->isSupportFrontZoom(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    :cond_3
    :goto_0
    return-void
.end method

.method private showOrHideManualPictureStyle()V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3ab

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ManualPictureStyleProtocol;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ManualPictureStyleProtocol;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showOrHideContrastSaturationSharpness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xb5

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    const/16 v3, 0xa7

    if-eq p0, v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xc5

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningPictureStyle()Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->expandPictureStyleBottomMenu(Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;)V

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ManualPictureStyleProtocol;->show()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_6

    const/16 v0, 0x28

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    const/4 p0, 0x2

    const/4 v0, 0x6

    invoke-interface {v1, p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ManualPictureStyleProtocol;->dismiss(II)Z

    :cond_6
    :goto_1
    return-void
.end method

.method private showOrHideTipImage(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xaf

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    :cond_0
    return-void
.end method

.method private singeSwitchVideoBeauty(Z)V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportBeautyLevel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    :cond_0
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportSmoothLevel()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    const/16 v0, 0x28

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFaceBeautySmoothLevel(I)V

    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setVideoShineForceOn(IZ)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoFilter()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setVideoBokehRatio(F)V

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setVideoBokehColorRetentionMode(I)V

    :cond_3
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged()V

    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onVideoBokehRatioChanged()V

    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onVideoFilterChanged()V

    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onShineStateChanged()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastMotionModule()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoFilter()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    :cond_5
    :goto_1
    return-void
.end method

.method private trackCenterMarkChanged(Z)V
    .locals 0

    return-void
.end method

.method private trackFocusPeakChanged(Z)V
    .locals 0

    return-void
.end method

.method private trackGenderAgeChanged(Z)V
    .locals 0

    return-void
.end method

.method private trackGotoSettings()V
    .locals 0

    return-void
.end method

.method private trackGradienterChanged(Z)V
    .locals 0

    return-void
.end method

.method private trackHHTChanged(Z)V
    .locals 0

    return-void
.end method

.method private trackMagicMirrorChanged(Z)V
    .locals 0

    return-void
.end method

.method private trackReferenceLineChanged(Z)V
    .locals 0

    return-void
.end method

.method private trackReferenceLineTypeChanged()V
    .locals 0

    return-void
.end method

.method private trackSuperEISChanged(Z)V
    .locals 0

    return-void
.end method

.method private trackSuperResolutionChanged(Z)V
    .locals 0

    return-void
.end method

.method private trackUltraPixelPortraitChanged(Z)V
    .locals 0

    return-void
.end method

.method private updateAiScene(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigAi()Lcom/android/camera/data/data/config/ComponentConfigAi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigAi;->isClosed()Z

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigAi;->setClosed(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$A625VheTfrLVfLPIeX3Lw2xUe0g;

    invoke-direct {v0, p1}, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$A625VheTfrLVfLPIeX3Lw2xUe0g;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xc9

    aput v1, p1, v0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAutoZoom(Z)V
    .locals 0

    return-void
.end method

.method private updateComponentBeauty(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xc2

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xea

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    const/16 v0, 0xef

    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;->onShineChanged(ZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateComponentFilter(Z)V
    .locals 3

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateComponentFilter: close = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->isClosed(I)Z

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->setClosed(ZI)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd4

    aput v2, v0, v1

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xc2

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateComponentFlash(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed()Z

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/16 v0, 0xc1

    aput v0, p1, p2

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateComponentHdr(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed()Z

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 v1, 0xa2

    if-ne p0, v1, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "off"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xc2

    aput v1, p1, v0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateComponentShine(Z)V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isClosed()Z

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setClosed(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateEyeLight(Z)V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEyeLight()Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;->isClosed()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;->setClosed(Z)V

    return-void
.end method

.method private updateFlashModeAndRefreshUI(Lcom/android/camera/module/BaseModule;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFlashModeAndRefreshUI flashMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p2}, Lcom/android/camera/CameraSettings;->setFlashMode(ILjava/lang/String;)V

    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f110284

    invoke-static {p0, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f110283

    invoke-static {p0, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/android/camera/module/Module;->isDoingAction()Z

    move-result p0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    new-array p0, v3, [I

    aput v1, p0, v2

    invoke-virtual {p1, p0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    goto :goto_1

    :cond_3
    new-array p0, v3, [I

    aput v1, p0, v2

    invoke-virtual {p1, p0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_4

    new-array p1, v3, [I

    const/16 p2, 0xc1

    aput p2, p1, v2

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_4
    return-void
.end method

.method private updateLiveShot(Z)V
    .locals 2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportLiveShot()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigLiveShot()Lcom/android/camera/data/data/config/ComponentConfigLiveShot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigLiveShot;->isClosed()Z

    move-result v0

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigLiveShot;->setClosed(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xce

    aput v1, p1, v0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    return-void
.end method

.method private updateRaw(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isClosed(I)Z

    move-result v1

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->setClosed(ZI)V

    return-void
.end method

.method private updateTipMessage(III)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    return-void
.end method

.method private updateUltraPixel(Z)V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->isClosed()Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->setClosed(Z)V

    return-void
.end method

.method private watermarkToast()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "ai_watermark"

    const v2, 0x7f110133

    invoke-interface {p0, v1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs closeMutexElement(Ljava/lang/String;[I)V
    .locals 6

    array-length v0, p2

    new-array v0, v0, [I

    iput-object p2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_c

    aget v2, p2, v1

    const/16 v3, 0xc1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_b

    const/16 v3, 0xc2

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc4

    const/4 v5, 0x2

    if-eq v2, v3, :cond_9

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_8

    const/16 v3, 0xce

    if-eq v2, v3, :cond_7

    const/16 v3, 0xd1

    if-eq v2, v3, :cond_6

    const/16 v3, 0xd4

    if-eq v2, v3, :cond_5

    const/16 v3, 0xe3

    if-eq v2, v3, :cond_4

    const/16 v3, 0xed

    if-eq v2, v3, :cond_3

    const/16 v3, 0xef

    if-eq v2, v3, :cond_2

    const/16 v3, 0xfd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateEyeLight(Z)V

    const/16 v2, 0x2d

    aput v2, v0, v1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unknown mutex element"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAutoZoom(Z)V

    const/16 v2, 0x33

    aput v2, v0, v1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    const/16 v2, 0xd

    aput v2, v0, v1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateRaw(Z)V

    const/16 v2, 0x2c

    aput v2, v0, v1

    goto :goto_1

    :cond_4
    const/16 v2, 0x4a

    aput v2, v0, v1

    goto :goto_1

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentShine(Z)V

    aput v5, v0, v1

    goto :goto_1

    :cond_6
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateUltraPixel(Z)V

    const/16 v2, 0x32

    aput v2, v0, v1

    goto :goto_1

    :cond_7
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateLiveShot(Z)V

    const/16 v2, 0x31

    aput v2, v0, v1

    goto :goto_1

    :cond_8
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAiScene(Z)V

    const/16 v2, 0x24

    aput v2, v0, v1

    goto :goto_1

    :cond_9
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    aput v5, v0, v1

    goto :goto_1

    :cond_a
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    const/16 v2, 0xb

    aput v2, v0, v1

    goto :goto_1

    :cond_b
    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    const/16 v2, 0xa

    aput v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$3qCGqR6tPTVPLKfMGltjP7Zxk6w;

    invoke-direct {p1, v0}, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$3qCGqR6tPTVPLKfMGltjP7Zxk6w;-><init>([I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configAi108()V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v0

    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configAi108: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xaf

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->setAi108Running(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xac

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_2

    const-string/jumbo v2, "ultra_pixel"

    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setTipsState(Ljava/lang/String;Z)V

    new-array v2, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xab

    aput v5, v2, v4

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    invoke-direct {p0, v1, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method public configBackSoftLightSwitch(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$bSq0HUhoHpYZw922jQqemIXbPiM;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$bSq0HUhoHpYZw922jQqemIXbPiM;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configBeautySwitch(I)V
    .locals 10

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v4, 0xa9

    if-eq v0, v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    const/16 v5, 0xa3

    const/16 v6, 0xa1

    if-eq v0, v5, :cond_2

    const/16 v5, 0xa5

    if-eq v0, v5, :cond_2

    const/16 v5, 0xab

    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_2

    if-nez v4, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getNextValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "i:0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v3

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v3

    xor-int/2addr v8, v9

    invoke-virtual {v5, v0, v7}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setComponentValue(ILjava/lang/String;)V

    invoke-static {v7}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautySwitchChanged(Ljava/lang/String;)V

    if-eqz v8, :cond_4

    if-eqz v4, :cond_4

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    const-string v5, "pref_video_speed_fast_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    invoke-static {v0, v2}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    const-string p1, "normal"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoModeChanged(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_5

    if-ne v0, v6, :cond_5

    invoke-direct {p0, v6, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    new-array p1, v3, [I

    const/16 v0, 0xd

    aput v0, p1, v2

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :goto_1
    return-void
.end method

.method public configBokeh(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configBokeh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f110200

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$F-GNfICRt88wLhfTja0VZysQDJw;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$F-GNfICRt88wLhfTja0VZysQDJw;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configCenterMarkSwitch(I)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setCenterMarkOn(Z)V

    xor-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setCenterMarkOn(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v1

    :goto_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configCenterMarkSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    if-ne v2, p1, :cond_3

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackCenterMarkChanged(Z)V

    :cond_3
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa6

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->hideReferenceGradienter()V

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateCenterMarkSwitched()V

    :cond_5
    :goto_1
    return-void
.end method

.method public configCinematicAspectRatio(I)V
    .locals 7

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configCinematicAspectRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xa5

    const/16 v3, 0xa3

    if-ne p1, v2, :cond_3

    move p1, v3

    :cond_3
    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->setCinematicAspectRatioEnabled(IZ)V

    const/16 v2, 0xab

    const-string v4, "on"

    const-string v5, "off"

    const/4 v6, 0x0

    if-eq p1, v2, :cond_7

    if-eq p1, v3, :cond_7

    const/16 v2, 0xad

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move-object v4, v5

    :goto_0
    new-array v0, v1, [I

    const/16 v1, 0xd8

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    invoke-static {p1, v2}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->support8KMovie()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    goto :goto_3

    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    move-object v4, v5

    :goto_2
    invoke-virtual {p0, v1, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRatio(ZLjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public configClone(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configClone: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1a2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneChooser;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CloneChooser;->hide()V

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    const/16 p1, 0xb9

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->quit()V

    :cond_3
    const/16 p1, 0xd2

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    return-void
.end method

.method public configDualWaterMarkSwitch()V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualWaterMarkChanged(Z)V

    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configDualWaterMarkSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f1103e8

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setDualCameraWaterMarkOpen(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setDualCameraWaterMarkOpen(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$dPaX_hIksPHuf13stQqEYYlMAhA;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$dPaX_hIksPHuf13stQqEYYlMAhA;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configExposureFeedbackSwitch(I)V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_exposure_feedback"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int v0, v0, v2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configExposureFeedbackSwitch: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const-string p1, "pref_camera_peak_key"

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->setDrawExposure(Z)V

    return-void
.end method

.method public configFPS960(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configFPS960: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "slow_motion_480"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "slow_motion_960"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "slow_motion_1920"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "960fps_desc"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    :cond_2
    const/16 v1, 0xac

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method public configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V
    .locals 4

    const-string p3, "configFilm: start="

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", filmItem.id="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 p3, 0xd4

    const/16 v0, 0xcf

    const/16 v1, 0xbd

    const/16 v2, 0xd0

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/extra/DataItemLive;->setCurrentFilmItem(Lcom/android/camera/fragment/film/FilmItem;)V

    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo v3, "video_a"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo v1, "video_b"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo v0, "video_c"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xa4

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-nez p2, :cond_3

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startShot ignore, configChanges is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-static {v0}, Lcom/android/camera/fragment/clone/Config;->setCloneMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-interface {p2, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configTimeFreeze(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    goto :goto_1

    :cond_4
    iget-object p2, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo v0, "video_d"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string/jumbo p2, "video_e"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class p2, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1, p2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->reset()V

    invoke-direct {p0, p3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :cond_6
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110743

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110741

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    const-string p3, "pref_video_volumekey_function_key"

    invoke-virtual {p2, p3, p1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-nez p2, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    if-eq p1, v1, :cond_9

    if-eq p1, v0, :cond_9

    if-eq p1, v2, :cond_9

    if-eq p1, p3, :cond_9

    const/16 p2, 0xd5

    if-eq p1, p2, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0xac

    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p2, :cond_a

    if-ne p1, v2, :cond_a

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setAlertAnim(Z)V

    const/16 p1, 0x8

    const p3, 0x7f110389

    const-wide/16 v0, -0x1

    invoke-interface {p2, p1, p3, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_a
    const/16 p1, 0xd3

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :cond_b
    :goto_2
    return-void
.end method

.method public configFlash(Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configFlash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdr()V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$sfm8wCdCn94sjJLup0XMZSxOmTI;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$sfm8wCdCn94sjJLup0XMZSxOmTI;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;Z)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configFocusPeakSwitch(I)V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_peak_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int v0, v0, v2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configFocusPeakSwitch: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const-string p1, "pref_camera_exposure_feedback"

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectController;->setDrawExposure(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    return-void
.end method

.method public configGenderAgeSwitch(I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "pref_camera_show_gender_age_key"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configGenderAgeSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGenderAgeChanged(Z)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa6

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setShowGenderAndAge(Z)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    new-array p1, v2, [I

    const/16 v3, 0x26

    const/4 v4, 0x0

    aput v3, p1, v4

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110363

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkEnable(Z)V

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkEnable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public configGradienterSwitch(I)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setGradienterOn(Z)V

    xor-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setGradienterOn(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v1

    :goto_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configGradienterSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, p1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGradienterChanged(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1, v1}, Lcom/android/camera/module/BaseModule;->onGradienterSwitched(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->hideReferenceGradienter()V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateReferenceGradienterSwitched()V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    xor-int/lit8 p1, v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->showOrHideChip(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xaf

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigQrCodeTip()Z

    :cond_6
    return-void
.end method

.method public configGroupSwitch(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "pref_camera_groupshot_mode_key"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result p1

    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configGroupSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/Camera2Module;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/module/Camera2Module;->showOrHideChip(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isBeautyPanelShow()Z

    move-result v3

    const v4, 0x7f1103e1

    const-string v5, "b"

    if-eqz p1, :cond_2

    if-nez v3, :cond_1

    const/16 p1, 0x11

    const/4 v3, 0x2

    invoke-direct {p0, p1, v4, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    :cond_1
    const/4 p1, 0x5

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-virtual {p0, v5, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    :goto_0
    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    const/4 p1, 0x3

    new-array p1, p1, [I

    fill-array-data p1, :array_1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigQrCodeTip()Z

    return-void

    nop

    :array_0
    .array-data 4
        0xc1
        0xc2
        0xc4
        0xc9
        0xfe
    .end array-data

    :array_1
    .array-data 4
        0x2a
        0x22
        0x1e
    .end array-data
.end method

.method public configHHTSwitch(I)V
    .locals 4

    const-string v0, "pref_camera_hand_night_key"

    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackHHTChanged(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configHHTSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object v1

    const-string v2, "a"

    const v3, 0x7f1103da

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    const/4 v0, 0x2

    invoke-direct {p0, p1, v3, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    new-array p1, v0, [I

    fill-array-data p1, :array_0

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    const/4 p0, 0x3

    invoke-virtual {v1, p0}, Lcom/android/camera/MutexModeManager;->setMutexModeMandatory(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->clearMandatoryFlag()V

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->resetMutexModeManually()V

    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc1
        0xc2
    .end array-data
.end method

.method public configHdr(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoHdrIfNeed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configHdr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/Camera2Module;->setHdrModeChange(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdr()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    if-eq v2, v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->resetMagneticInfo()V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$IMvZ2gt817uOPtv-qqaEGW5TgSA;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$IMvZ2gt817uOPtv-qqaEGW5TgSA;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x3

    const-string v2, "off"

    if-eq v2, p1, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraPixel(I)V

    :cond_3
    if-eq v2, p1, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configUltraPixelPortrait(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v3}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraCapabilities;->isMacroHdrMutex()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    if-eq v2, p1, :cond_5

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigTipOfHdr(I)V

    return-void
.end method

.method public configIDCard()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v2, "configIDCard"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v3, 0xdd

    invoke-interface {v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->setEntranceMode(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xb3

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    const/16 v1, 0xb6

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f11010d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->changeModeByNewMode(ILjava/lang/String;I)V

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackGotoIDCard()V

    return-void
.end method

.method public configLiveReview()V
    .locals 1

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v0, "configLiveReview"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_0

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_0
    return-void
.end method

.method public configLiveShotSwitch(I)V
    .locals 10

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa5

    const/16 v3, 0xa3

    if-eq v1, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    if-eq v1, v2, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportLiveShot()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v4, 0xac

    invoke-virtual {v1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_5

    return-void

    :cond_5
    check-cast v0, Lcom/android/camera/module/Camera2Module;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    const/4 p0, 0x4

    if-eq p1, p0, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "configLiveShotSwitch: MUTEX false"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setLiveShotOn(Z)V

    invoke-virtual {v0, v6}, Lcom/android/camera/module/Camera2Module;->stopLiveShot(Z)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result p1

    xor-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->setLiveShotOn(Z)V

    sget-object v7, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "configLiveShotSwitch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    invoke-virtual {v0, v6}, Lcom/android/camera/module/Camera2Module;->stopLiveShot(Z)V

    const/16 p0, 0x8

    const p1, 0x7f11020c

    invoke-interface {v1, p0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertLiveShotHint(II)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentMode(I)V

    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    if-ne p1, v2, :cond_9

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRatio(ZLjava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->startLiveShot()V

    const p1, 0x7f11020d

    invoke-interface {v1, v6, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertLiveShotHint(II)V

    :goto_0
    const-string p1, "live_shot"

    invoke-direct {p0, p1, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_a
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "Ignore #startLiveShot in ultra pixel photography mode"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    new-array p0, v5, [I

    const/16 p1, 0xce

    aput p1, p0, v6

    invoke-interface {v1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    return-void
.end method

.method public configLiveVV(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;ZZ)V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMProcessing;->reset()V

    invoke-virtual {v0, p2}, Lcom/android/camera/data/observeable/VMProcessing;->setCurrentWorkspaceItem(Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configLiveVV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe6

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p3

    check-cast p3, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p4

    const/16 v0, 0xe5

    invoke-virtual {p4, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p4

    check-cast p4, Lcom/android/camera/protocol/ModeProtocol$LiveVVChooser;

    if-nez p4, :cond_1

    return-void

    :cond_1
    invoke-interface {p4}, Lcom/android/camera/protocol/ModeProtocol$LiveVVChooser;->hide()V

    invoke-interface {p3, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->prepare(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/extra/DataItemLive;->setCurrentVVItem(Lcom/android/camera/fragment/vv/VVItem;)V

    const/16 p1, 0xb3

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVV()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getCurrentVVItem()Lcom/android/camera/fragment/vv/VVItem;

    move-result-object p1

    if-eqz p1, :cond_4

    iget p1, p1, Lcom/android/camera/fragment/vv/VVItem;->index:I

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVProcess;->quit()V

    :goto_0
    const/16 p1, 0xd1

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :goto_1
    return-void
.end method

.method public configMagicFocusSwitch()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_ubifocus_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->triggerSwitchAndGet(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackMagicMirrorChanged(Z)V

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configMagicFocusSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public configMagicMirrorSwitch(I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "pref_camera_magic_mirror_key"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configMagicMirrorSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackMagicMirrorChanged(Z)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa6

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setShowMagicMirror(Z)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    new-array p1, v2, [I

    const/16 v3, 0x27

    const/4 v4, 0x0

    aput v3, p1, v4

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11037a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkEnable(Z)V

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/camera2/Camera2Proxy;->setFaceWaterMarkEnable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public configMeter(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configMeter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckParameterResetTip(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$PymE9DS6rJmEAf8qzJP8ykEihZo;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$PymE9DS6rJmEAf8qzJP8ykEihZo;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configModeEdit()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "configModeEdit"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const-class v2, Lcom/android/camera/ModeEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v1

    const-string v2, "from_where"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    :cond_1
    return-void
.end method

.method public configModeMore(Z)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x1f

    goto :goto_0

    :cond_0
    const/16 p1, 0x1e

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_1
    return-void
.end method

.method public configNearRangeMode()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$h32T5vp5AAW3Y8mIhlK9J8Y7JlI;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$h32T5vp5AAW3Y8mIhlK9J8Y7JlI;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configPortraitSwitch(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$Q5ly_xJGUgqTcWwe8XrwRGycsfs;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$Q5ly_xJGUgqTcWwe8XrwRGycsfs;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public configRGBHistogramSwitch(I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result v0

    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configRGBHistogramSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setProVideoHistogramOpen(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_2

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRGBHistogramSwitched(Z)V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method public configRatio(ZLjava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideLighting()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-static {v0, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackPictureSize(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5, v0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->reConfigCinematicAspectRatioIfRatioChanged(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    new-array v5, v4, [I

    const/16 v6, 0xfb

    aput v6, v5, v3

    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    const-string v5, "16x9"

    if-eqz v1, :cond_5

    move p1, v4

    move-object p2, v5

    :cond_5
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "19.5x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v5, "16x10"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v5, "20x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v5, "19x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v7

    goto :goto_1

    :sswitch_4
    const-string v5, "18x9"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v4

    goto :goto_1

    :sswitch_6
    const-string v5, "4x3"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v3

    goto :goto_1

    :sswitch_7
    const-string v5, "1x1"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x7

    :cond_6
    :goto_1
    const/16 v5, 0xa5

    const/16 v6, 0xa3

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->setComponentValue(ILjava/lang/String;)V

    if-eq v0, v5, :cond_7

    if-ne v0, v6, :cond_8

    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configLiveShotSwitch(I)V

    :cond_8
    move v1, v4

    move v0, v5

    goto :goto_3

    :pswitch_1
    if-eq v0, v5, :cond_9

    if-ne v0, v6, :cond_a

    :cond_9
    move v0, v6

    :cond_a
    move v1, v4

    goto :goto_3

    :pswitch_2
    if-eq v0, v5, :cond_b

    if-ne v0, v6, :cond_c

    :cond_b
    move v1, v3

    move v5, v1

    move v0, v6

    goto :goto_4

    :cond_c
    :goto_2
    move v1, v3

    :goto_3
    move v5, v1

    :goto_4
    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    :cond_d
    if-eqz v5, :cond_e

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_e

    new-array v1, v4, [I

    const/16 v4, 0xd1

    aput v4, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    :cond_e
    if-nez p1, :cond_f

    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configRatio: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0, p2}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->setComponentValue(ILjava/lang/String;)V

    :cond_f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-direct {p0, v0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0xc6aa -> :sswitch_7
        0xd1ef -> :sswitch_6
        0x171fa6 -> :sswitch_5
        0x172728 -> :sswitch_4
        0x172ae9 -> :sswitch_3
        0x177d7f -> :sswitch_2
        0x2ccd452 -> :sswitch_1
        0x56d670f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public configRawSwitch(I)V
    .locals 7

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configRawSwitch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "raw"

    const-string v5, "M_manual_"

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2, v6}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->setRaw(IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2, v4}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->setRaw(IZ)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/config/DataItemFeature;->isRawMutexWithUltraPixel(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v4, [I

    const/16 v1, 0xd1

    aput v1, v0, v6

    const-string v1, "n"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    :cond_3
    :goto_0
    invoke-direct {p0, v2, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckRaw()V

    :goto_1
    return-void
.end method

.method public configReferenceSwitch(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configReferenceSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getmComponentLiveReferenceLine()Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_referenceline_type_key"

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/DataItemBase;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackReferenceLineTypeChanged()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa6

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setGradienterOn(Z)V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateReferenceGradienterSwitched()V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setGradienterOn(Z)V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateReferenceGradienterSwitched()V

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateReferenceGradienterSwitched()V

    :goto_0
    return-void
.end method

.method public configRotationChange(II)V
    .locals 4

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configRotationChange: show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const/16 v3, 0x5a

    if-eq p2, v3, :cond_3

    const/16 v3, 0xb4

    if-eq p2, v3, :cond_0

    const/16 v3, 0x10e

    if-eq p2, v3, :cond_3

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0, v2, v2}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->updateLyingDirectHint(ZZ)V

    :cond_1
    if-eqz v0, :cond_6

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->updateLyingDirectHint(ZZ)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0, v2, v2}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->updateLyingDirectHint(ZZ)V

    :cond_4
    if-eqz p0, :cond_6

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-interface {p0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->updateLyingDirectHint(ZZ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public configScene(I)V
    .locals 8

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "pref_camera_scenemode_setting_key"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configScene: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xb5

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xaf

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xc2

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v1, :cond_2

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideTipImage()V

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v4, v7}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_1
    new-instance p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl$2;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl$2;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;Ljava/util/Optional;)V

    invoke-interface {v2, v7, v6, p1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    if-ne p1, v6, :cond_3

    move p0, v5

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    :goto_0
    const/4 p1, 0x0

    invoke-interface {v2, v7, p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    :goto_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    new-array p1, v6, [I

    const/4 v0, 0x0

    aput v5, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public configSuperResolutionSwitch(I)V
    .locals 4

    const-string v0, "pref_camera_super_resolution_key"

    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configSuperResolutionSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackSuperResolutionChanged(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object v1

    const-string v2, "c"

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    const/16 p0, 0x9

    invoke-virtual {v1, p0}, Lcom/android/camera/MutexModeManager;->setMutexModeMandatory(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->clearMandatoryFlag()V

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->resetMutexModeManually()V

    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xc1
        0xc2
    .end array-data
.end method

.method public configSwitchUltraPixel(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v2, :cond_1a

    iget-object v3, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v3, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v6

    xor-int/lit8 v7, v6, 0x1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getCurrentSupportUltraPixel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v3}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    const/16 v11, 0x8

    const-string v12, "REAR_0x2"

    const-string/jumbo v15, "ultra_pixel"

    const-string v10, "j"

    const/4 v14, 0x3

    const/4 v13, 0x1

    if-eq v1, v13, :cond_5

    if-eq v1, v14, :cond_2

    goto/16 :goto_7

    :cond_2
    if-eqz v6, :cond_14

    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v3, "configSwitchUltraPixel: MUTEX false"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-eqz v1, :cond_3

    invoke-virtual {v0, v10}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getLastUiStyle()I

    move-result v1

    if-ne v1, v14, :cond_4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->restartModule()V

    :goto_0
    invoke-virtual {v8}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelCloseTip()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v15, v11, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configSwitchUltraPixel: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-static {v5, v1}, Lcom/android/camera/CameraSettings;->setUltraWideConfig(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v6, 0xaf

    invoke-virtual {v1, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateLeftTipImage()V

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    :cond_6
    invoke-direct {v0, v14}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentMode(I)V

    const/4 v1, 0x2

    if-eqz v7, :cond_f

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v6, -0x5237544d

    const/4 v14, 0x4

    if-eq v11, v6, :cond_8

    const v6, -0x4372e2e

    if-eq v11, v6, :cond_7

    packed-switch v11, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v6, "REAR_0x3"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v14

    goto :goto_2

    :pswitch_1
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    goto :goto_2

    :pswitch_2
    const-string v6, "REAR_0x1"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x3

    goto :goto_2

    :cond_7
    const-string v6, "REAR_0x5"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v1

    goto :goto_2

    :cond_8
    const-string v6, "FRONT_0x1"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v13

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v6, -0x1

    :goto_2
    const/16 v11, 0xed

    if-eqz v6, :cond_c

    if-eq v6, v13, :cond_b

    if-eq v6, v1, :cond_a

    const/4 v1, 0x3

    if-eq v6, v1, :cond_a

    if-eq v6, v14, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mi/config/DataItemFeature;->isRawMutexWithUltraPixel(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-array v1, v13, [I

    const/4 v3, 0x0

    aput v11, v1, v3

    invoke-virtual {v0, v10, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    goto :goto_3

    :cond_b
    const/4 v1, 0x3

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v10, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    goto :goto_3

    :cond_c
    new-array v1, v14, [I

    fill-array-data v1, :array_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mi/config/DataItemFeature;->isRawMutexWithUltraPixel(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x5

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    array-length v3, v1

    sub-int/2addr v3, v13

    aput v11, v1, v3

    :cond_d
    invoke-virtual {v0, v10, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    :cond_e
    :goto_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    iget-object v3, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    invoke-virtual {v1, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->setRecordingClosedElements([I)V

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->switchOnUltraPixel(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    goto :goto_4

    :cond_f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    invoke-virtual {v0, v10}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    :goto_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xc2

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v3

    goto :goto_5

    :cond_10
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_11

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_11
    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v3, 0xa5

    if-ne v1, v3, :cond_12

    const/16 v1, 0xa3

    invoke-direct {v0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_6

    :cond_12
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    :goto_6
    if-eqz v7, :cond_13

    invoke-direct {v0, v15, v13}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    goto :goto_7

    :cond_13
    invoke-virtual {v8}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelCloseTip()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v2, v15, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V

    :cond_14
    :goto_7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xb6

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xc2

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v7, :cond_16

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directHideTipImage()V

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directShowOrHideLeftTipImage(Z)V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideQrCodeTip()V

    :cond_15
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    goto :goto_9

    :cond_16
    const/4 v4, 0x0

    if-eqz v3, :cond_17

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v13

    goto :goto_8

    :cond_17
    move v13, v4

    :goto_8
    if-eqz v0, :cond_18

    if-nez v13, :cond_18

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    :cond_18
    if-eqz v1, :cond_1a

    if-nez v13, :cond_1a

    const/16 v0, 0xa7

    if-eq v5, v0, :cond_19

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showZoomButton()V

    :cond_19
    if-eqz v2, :cond_1a

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAlertStatus()V

    :cond_1a
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4372e32
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xc4
        0xc9
        0xce
    .end array-data

    :array_1
    .array-data 4
        0xc2
        0xef
        0xc9
        0xce
    .end array-data
.end method

.method public configTiltSwitch(I)V
    .locals 8

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v1, v1, Lcom/android/camera/module/Camera2Module;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->isSwitchOn(I)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p1, v7, :cond_3

    if-eq p1, v5, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "configTiltSwitch: MUTEX false"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->toSwitch(IZ)V

    move v4, v6

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    const-string p1, "circle"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackTiltShiftChanged(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v7}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->toSwitch(IZ)V

    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentMode(I)V

    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    move v4, v7

    goto :goto_0

    :cond_4
    const-string p0, "off"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackTiltShiftChanged(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->toSwitch(IZ)V

    move v4, v6

    :goto_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    xor-int/lit8 p1, v4, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->showOrHideChip(Z)V

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configTiltSwitch: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 p0, 0xe4

    invoke-interface {v1, v4, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, v4}, Lcom/android/camera/module/Camera2Module;->onTiltShiftSwitched(Z)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/effect/EffectController;->setDrawTilt(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xaf

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigQrCodeTip()Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reConfigAiTip()V

    :cond_5
    :goto_2
    return-void
.end method

.method public configTimeFreeze(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x1a0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CloneChooser;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CloneChooser;->hide()V

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->prepare(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V

    const/16 p1, 0xd5

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    return-void
.end method

.method public configTimerSwitch(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configTimerSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object p0

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackTimerChanged(Ljava/lang/String;)V

    const/16 v0, 0xa0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public configUltraPixelPortrait(I)V
    .locals 13

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string v2, "pref_camera_ultra_pixel_portrait_mode_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/16 v5, 0x8

    const-string v6, "o"

    const v7, 0x7f1108f1

    const-string/jumbo v8, "ultra_pixel_portrait"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq p1, v10, :cond_3

    const/4 v11, 0x3

    if-eq p1, v11, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v3, :cond_6

    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v3, "configUltraPixelPortrait: MUTEX false"

    invoke-static {p1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, v8, v5, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-eqz p1, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "configUltraPixelPortrait: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    invoke-interface {v4, v8, v5, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    invoke-virtual {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-virtual {p0, v6, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setRecordingClosedElements([I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xc2

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_5
    invoke-interface {v4, v8, v9, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :goto_0
    xor-int/lit8 p1, v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackUltraPixelPortraitChanged(Z)V

    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    new-array p1, v10, [I

    const/16 v0, 0x39

    aput v0, p1, v9

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xaf

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateTipImage()V

    new-array p0, v10, [I

    const/16 p1, 0xd7

    aput p1, p0, v9

    invoke-interface {v4, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    return-void

    :array_0
    .array-data 4
        0xc2
        0xc4
        0xc9
        0xef
        0xfe
    .end array-data
.end method

.method public configVideoFast()V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const v2, 0x7f1103e0

    const/16 v3, 0xa9

    if-eq v0, v3, :cond_2

    const-string v1, "fast"

    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoModeChanged(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v4, 0xd8

    const/4 v5, 0x0

    aput v4, v1, v5

    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    invoke-static {v0, v5}, Lcom/android/camera/CameraSettings;->setAutoZoomEnabled(IZ)V

    invoke-static {v0, v5}, Lcom/android/camera/CameraSettings;->setAiEnhancedVideoEnabled(IZ)V

    invoke-static {v0, v5}, Lcom/android/camera/CameraSettings;->setSuperEISEnabled(IZ)V

    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    :cond_1
    invoke-static {v0, v5}, Lcom/android/camera/CameraSettings;->setSubtitleEnabled(IZ)V

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    const-string v0, "pref_video_speed_fast_key"

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    const-string v0, "normal"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoModeChanged(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :goto_0
    return-void
.end method

.method public configVideoLogSwitch(I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v0

    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configVideoLogSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setProVideoLog(Z)V

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xc2

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0x3a6

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x5

    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->dismiss(II)Z

    :cond_2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v0

    const-string/jumbo v2, "wide"

    invoke-virtual {v0, p1, v2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    return-void
.end method

.method public exitNightInCaptureMode()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$V6HPBWAbY61y6X0F4T7mUlJHysE;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$V6HPBWAbY61y6X0F4T7mUlJHysE;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public findBestWatermarkItem(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public hideLighting()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowLightingView()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getPortraitLightVersion()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$applyConfig$0$ConfigChangeImpl(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->lambda$applyConfig$0(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public synthetic lambda$closeVideoBeautifyForTrueVideoBokeh$15$ConfigChangeImpl(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->lambda$closeVideoBeautifyForTrueVideoBokeh$15(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public synthetic lambda$configBackSoftLightSwitch$21$ConfigChangeImpl(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->lambda$configBackSoftLightSwitch$21(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public synthetic lambda$configFlash$16$ConfigChangeImpl(ZLcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->lambda$configFlash$16(ZLcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public synthetic lambda$configMoonNight$10$ConfigChangeImpl(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->lambda$configMoonNight$10(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public synthetic lambda$recheckVideoFps$6$ConfigChangeImpl(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->lambda$recheckVideoFps$6(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public onConfigChanged(I)V
    .locals 13

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mChangeInterceptor:Lcom/android/camera/module/interceptor/ConfigChangeInterceptor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/camera/module/interceptor/ConfigChangeInterceptor;->consumeConfigChanged(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mChangeInterceptor:Lcom/android/camera/module/interceptor/ConfigChangeInterceptor;

    invoke-virtual {v0}, Lcom/android/camera/module/interceptor/BaseModuleInterceptor;->asBlocker()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/BaseModule;->dispatchConfigChange(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->isMutexConfig(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    sget-object v2, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_MENU_CONFIGS:[I

    array-length v3, v2

    const/4 v4, 0x0

    const/16 v5, 0xb0

    move v6, v4

    move v7, v6

    move v8, v5

    :goto_0
    if-ge v6, v3, :cond_d

    aget v9, v2, v6

    if-ne v9, p1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v10, 0xe5

    const/16 v11, 0xd1

    if-ne p1, v11, :cond_4

    if-eq v9, v10, :cond_c

    :cond_4
    if-ne p1, v10, :cond_5

    if-ne v9, v11, :cond_5

    goto :goto_3

    :cond_5
    const/16 v12, 0xcb

    if-eq v9, v12, :cond_b

    const/16 v12, 0xce

    if-eq v9, v12, :cond_9

    if-eq v9, v11, :cond_7

    if-eq v9, v10, :cond_6

    invoke-static {v9}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v10

    if-eqz v10, :cond_c

    if-ne p1, v12, :cond_8

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v10

    if-eqz v10, :cond_c

    move v7, v1

    :cond_8
    :goto_1
    move v8, v9

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v12

    if-eqz v12, :cond_c

    if-ne p1, v11, :cond_a

    :goto_2
    move v8, v5

    goto :goto_3

    :cond_a
    if-ne p1, v10, :cond_8

    goto :goto_2

    :cond_b
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v9

    const/16 v10, 0xa2

    invoke-virtual {v9, v10}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v9

    check-cast v9, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v9}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowLightingView()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    :cond_c
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_d
    const/4 v0, 0x3

    if-nez v7, :cond_f

    if-eq v8, v5, :cond_e

    invoke-direct {p0, v8, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    goto :goto_4

    :cond_f
    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    if-eq v8, v5, :cond_11

    invoke-direct {p0, v8, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    goto :goto_4

    :cond_10
    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    :cond_11
    :goto_4
    return-void
.end method

.method public onConfigValueChanged(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfigValue(ILjava/lang/String;)V

    return-void
.end method

.method public onShineDismiss(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 p1, 0xa7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    const/16 p1, 0xb4

    if-eq p0, p1, :cond_2

    const/16 p1, 0xbb

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0x1a5

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;->setSelectorLayoutVisible(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xb5

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onThermalNotification(I)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "onThermalNotification isAlive false"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "onThermalNotification current module is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrameAvailable()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isSelectingCapturedResult()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/camera/module/BaseModule;->setThermalLevel(I)V

    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThermalDetector;->thermalConstrained()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "thermalConstrained"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->thermalConstrained()V

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isHardwareSupported()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-array p1, v1, [I

    const/16 v1, 0x42

    aput v1, p1, v3

    invoke-virtual {v0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThermalDetector;->thermalCloseFlash()Z

    move-result p1

    const-string v1, "0"

    if-eqz p1, :cond_5

    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "thermalCloseFlash"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isThermalThreshold()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThermalDetector;->thermalCloseFront()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThermalDetector;->thermalCloseBoth()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    sget-object p1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v2, "recording time is up to thermal threshold"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v3

    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateFlashModeAndRefreshUI(Lcom/android/camera/module/BaseModule;Ljava/lang/String;)V

    return v3

    :cond_a
    :goto_1
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "onThermalNotification don\'t support hardware flash"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_b
    :goto_2
    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p1, "onThermalNotification current module has not ready"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public reCheckAIWatermark(Z)V
    .locals 10

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportAIWatermark()Z

    move-result v0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportSuperMoonMode()Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v1

    const/16 v2, 0xfe

    const/16 v3, 0xcd

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_8

    const/16 v6, 0xbc

    if-ne v0, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable(I)Z

    move-result v3

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needForceDisable(I)Z

    move-result v7

    if-eqz v3, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showWatermarkSample(Z)V

    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v7

    const/16 v8, 0xac

    invoke-virtual {v7, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v7

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v7, :cond_4

    const v8, 0x7f110133

    const-string v9, "ai_watermark"

    invoke-interface {v7, v9, v4, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_4
    if-nez p1, :cond_10

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getIWatermarkEnable()Z

    move-result p1

    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$AIWatermarkDetect;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$AIWatermarkDetect;->resetResult()V

    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setWatermarkEnable(Z)V

    :cond_6
    const/16 p1, 0xa3

    if-eq v0, p1, :cond_7

    const/16 p1, 0xa5

    if-eq v0, p1, :cond_7

    if-ne v0, v6, :cond_10

    :cond_7
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showDualController(Z)V

    goto/16 :goto_5

    :cond_8
    :goto_0
    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object p1

    if-ne v0, v3, :cond_9

    move v0, v5

    goto :goto_1

    :cond_9
    move v0, v4

    :goto_1
    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v0

    if-eqz v0, :cond_b

    if-eq v0, v5, :cond_b

    if-eq v0, v3, :cond_b

    if-eq v0, v1, :cond_b

    const/4 v6, 0x4

    if-eq v0, v6, :cond_b

    const/16 v6, 0xb

    if-eq v0, v6, :cond_b

    const/16 v6, 0xc

    if-eq v0, v6, :cond_b

    move v4, v5

    goto :goto_2

    :cond_a
    move v4, v0

    :cond_b
    :goto_2
    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$AIWatermarkDetect;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$AIWatermarkDetect;->resetResult()V

    :cond_c
    invoke-virtual {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showWatermarkSample(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateASDForWatermark()V

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa6

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateWatermarkSample(Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getUpDistance()I

    move-result p1

    if-lez p1, :cond_e

    goto :goto_3

    :cond_e
    move v5, v3

    :goto_3
    invoke-interface {v0, v5, p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->moveWatermarkLayout(II)V

    :cond_f
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerBurst(I)V

    :cond_10
    :goto_5
    return-void
.end method

.method public reCheckAiAudio()V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_3

    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v4, "reCheckAiAudio:SupportAiAudioNew"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/BaseModule;)Z

    move-result p0

    if-nez p0, :cond_2

    const p0, 0x7f1106e5

    goto :goto_0

    :cond_2
    move p0, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentStringRes(I)I

    move-result p0

    :goto_0
    if-eq p0, v5, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    :goto_1
    invoke-interface {v2, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioBGHint(II)V

    return-void
.end method

.method public reCheckAiAudioNewDescTip()V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_3

    const-string v2, "ai_aduio_new_desc"

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/BaseModule;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/mi/config/Device;->IS_K1:Z

    if-eqz p0, :cond_2

    const p0, 0x7f11080e

    goto :goto_0

    :cond_2
    const p0, 0x7f11080d

    :goto_0
    invoke-interface {v1, v2, v3, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioNewDescTip(Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method public reCheckAiAudioSingle()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioSingEnabled(I)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/BaseModule;)Z

    move-result p0

    if-nez p0, :cond_2

    const p0, 0x7f1107c0

    goto :goto_0

    :cond_2
    move p0, v3

    :goto_0
    if-eq p0, v3, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    :goto_1
    invoke-interface {v2, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioSingleBGHint(II)V

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v0, "reCheckAiAudioSingle:alertAiAudioSingleBGHint"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reCheckAiAudioSingleDescTip()V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_3

    const-string v2, "ai_aduio_single_desc"

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isAiAudioSingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/BaseModule;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/mi/config/Device;->IS_K1:Z

    if-eqz p0, :cond_2

    const p0, 0x7f110810

    goto :goto_0

    :cond_2
    const p0, 0x7f11080f

    :goto_0
    invoke-interface {v1, v2, v3, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioSingleDescTip(Ljava/lang/String;II)V

    :cond_3
    return-void
.end method

.method public reCheckAiEnhancedVideo()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/BaseModule;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    const v1, 0x7f110730

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiEnhancedVideoHint(II)V

    :cond_2
    return-void
.end method

.method public reCheckAiScene()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const v1, 0x7f110664

    const-string v2, "ai"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public reCheckAmbilight()V
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportXiaomiAmbilight()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 v0, 0xbb

    if-eq p0, v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x1a5

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;->updateTips()V

    :cond_3
    return-void
.end method

.method public reCheckCenterMark()V
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configCenterMarkSwitch(I)V

    :cond_0
    return-void
.end method

.method public reCheckColorEnhance()V
    .locals 2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportColorEnhance()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    const v1, 0x7f110814

    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertProColourHint(II)V

    :cond_2
    return-void
.end method

.method public reCheckDocumentMode()V
    .locals 3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDocumentMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDocumentMode2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    const/16 v2, 0xdd

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$JAZYAVem9NPmGnn8btjdT7omtNA;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$JAZYAVem9NPmGnn8btjdT7omtNA;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method public reCheckDualVideoMode()V
    .locals 8

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportDualVideoCameraChoose()Z

    move-result v2

    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->hasRemote()Z

    move-result v3

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0x1ad

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;->getRecorderManager(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 v7, 0xcc

    if-ne p0, v7, :cond_3

    const/16 p0, 0xde

    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    invoke-interface {v0, v5, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    goto :goto_1

    :cond_2
    invoke-interface {v0, v6, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    :goto_1
    if-nez v1, :cond_3

    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/camera/dualvideo/ModuleUtil;->getTopTipRes()I

    move-result p0

    invoke-interface {v0, v6, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertDualVideoHint(II)V

    :cond_3
    return-void
.end method

.method public reCheckExposureFeedbackConfig()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_exposure_feedback"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "reCheckExposureFeedbackConfig: configExposureFeedbackSwitch"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configExposureFeedbackSwitch(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckFastMotion(Z)V
    .locals 10

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_b

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhance()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;->isModified()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->isModified()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v5

    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0x2a2

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v6

    check-cast v6, Lcom/android/camera/protocol/ModeProtocol$FastMotionProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v7

    const/16 v8, 0xa1

    invoke-virtual {v7, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v7

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v8

    const/16 v9, 0x3a4

    invoke-virtual {v8, v9}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v8

    check-cast v8, Lcom/android/camera/protocol/ModeProtocol$FastmotionProAdjust;

    if-eqz v3, :cond_a

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lcom/android/camera/protocol/ModeProtocol$FastMotionProtocol;->isShowing()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_6
    if-eqz v8, :cond_7

    invoke-interface {v8}, Lcom/android/camera/protocol/ModeProtocol$FastmotionProAdjust;->isShowing()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_7
    if-eqz v7, :cond_a

    invoke-interface {v7}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    const/16 v6, 0xa0

    invoke-virtual {v0, v6}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->isModified()Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_8

    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_8
    move-object v6, v8

    :goto_2
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->isModified()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0f0019

    const/16 v7, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v4

    invoke-virtual {p0, v2, v7, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const v2, 0x7f11064a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    move-object v5, p0

    move v2, v3

    move-object v3, v0

    move-object v4, v6

    move v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFastmotionIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_a
    const/16 v2, 0x8

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFastmotionIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method public reCheckFilm()V
    .locals 4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 v1, 0xd0

    const/16 v2, 0xcf

    const/16 v3, 0xd4

    if-eq p0, v1, :cond_2

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_2

    return-void

    :cond_2
    if-ne p0, v3, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v3, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v1, v3}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getCurrentState()I

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setAlertAnim(Z)V

    if-ne p0, v2, :cond_5

    const p0, 0x7f110385

    goto :goto_0

    :cond_5
    const p0, 0x7f110389

    :goto_0
    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public reCheckFocusPeakConfig()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_peak_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v1, "reCheckFocusPeakConfig: configFocusPeakSwitch"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFocusPeakSwitch(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckFrontBokenTip()V
    .locals 3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportFrontBokeh()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    const v1, 0x7f110200

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    :cond_3
    return-void
.end method

.method public reCheckGradienter()V
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGradienterSwitch(I)V

    :cond_0
    return-void
.end method

.method public reCheckHanGestureDescTip()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    const-string v1, "hand_gesture_desc"

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f1103cc

    invoke-interface {v0, v1, v2, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public reCheckHandGesture()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHandGestureOpen()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_1

    const v0, 0x7f1103cd

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHandGestureHint(I)V

    :cond_1
    return-void
.end method

.method public reCheckLighting()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v1

    const/16 v2, 0xab

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowLightingView()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideLightingView()Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->setLightingViewStatus(Z)V

    :cond_2
    :goto_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowLightingView()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideLightingView()Z

    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideLighting(Z)V

    :cond_3
    return-void
.end method

.method public reCheckLiveDurationTip()V
    .locals 8

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v2, 0xb7

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa1

    if-eq v0, v2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object v2

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2, p0, v0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getCurrentPromptInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v6, 0xbb8

    const-string v2, "live_duration"

    invoke-interface/range {v1 .. v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckLiveShot()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportLiveShot()Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const v1, 0x7f11020d

    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertLiveShotHint(II)V

    :cond_4
    return-void
.end method

.method public reCheckLiveVV()V
    .locals 2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportLiveVVModeInMenu()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xa0

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_4

    const v1, 0x7f0a0088

    invoke-interface {p0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result p0

    const v1, 0xfffa

    if-ne p0, v1, :cond_4

    const/4 p0, 0x0

    const v1, 0x7f110944

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTopHint(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public reCheckMacroMode()V
    .locals 5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa3

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa2

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa5

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    if-eq v3, v1, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v3, 0xba

    if-eq v1, v3, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v3, 0xcd

    if-eq v1, v3, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v3, 0xa9

    if-eq v1, v3, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getResText()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertMacroModeHint(II)V

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isMacroHdrMutex()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    :cond_4
    return-void
.end method

.method public reCheckModuleUltraPixel()V
    .locals 4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const-string v1, "pref_module_ultra_pixel_tip"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelOpenTip()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "ultra_pixel"

    invoke-interface {v0, v1, v2, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckMutexConfigs(I)V
    .locals 7

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    sget-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MUTEX_MENU_CONFIGS:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget v4, v0, v3

    const/16 v5, 0xcb

    if-eq v4, v5, :cond_2

    const/16 v5, 0xd1

    if-eq v4, v5, :cond_4

    invoke-static {v4}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getPortraitLightVersion()I

    move-result v4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xa2

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    const/4 v5, 0x1

    if-gt v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckLighting()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v4, :cond_4

    invoke-interface {v4, v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->setLightingViewStatus(Z)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public reCheckMutexEarly(I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result p1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-eqz p1, :cond_0

    const-string p1, "o"

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    :cond_0
    const-string p0, "pref_camera_ultra_pixel_portrait_mode_key"

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public reCheckParameterDescriptionTip()V
    .locals 9

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isParameterDescriptionEnable()Z

    move-result v1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0x3a6

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    const/16 v4, 0xb4

    const/16 v5, 0xa9

    const/16 v6, 0xa2

    const/4 v7, 0x0

    if-eq v2, v6, :cond_1

    const/16 v8, 0xa7

    if-eq v2, v8, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v5, :cond_1

    move v1, v7

    :cond_1
    if-ne v2, v5, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhance()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v7

    :cond_2
    if-ne v2, v6, :cond_4

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move v1, v7

    :cond_4
    const/4 v5, 0x1

    if-ne v2, v6, :cond_5

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v5

    goto :goto_0

    :cond_5
    move v6, v7

    :goto_0
    if-ne v2, v4, :cond_6

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    move v6, v5

    :cond_6
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/BaseModule;)Z

    move-result p0

    xor-int/2addr p0, v5

    and-int/2addr p0, v1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    xor-int/2addr v1, v5

    and-int/2addr p0, v1

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    const/16 v7, 0x8

    :goto_1
    invoke-interface {v0, v7, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertParameterDescriptionTip(II)V

    :cond_8
    return-void
.end method

.method public reCheckParameterResetTip(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastmotionModulePro()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3ab

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ManualPictureStyleProtocol;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isChangeManuallyParameters()Z

    move-result p0

    const v2, 0x7f110830

    if-eqz p0, :cond_3

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ManualPictureStyleProtocol;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-interface {v0, p1, p0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertParameterResetTip(ZII)V

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p0, 0x8

    invoke-interface {v0, p1, p0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertParameterResetTip(ZII)V

    :cond_4
    :goto_1
    return-void
.end method

.method public reCheckRaw()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 v1, 0xa7

    if-eq p0, v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result p0

    const v1, 0x7f11045a

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    goto :goto_0

    :cond_4
    const/16 p0, 0x8

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public reCheckSkinColor()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getSkinColorType()Ljava/lang/String;

    move-result-object p0

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

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public reCheckSpeechShutterDescTip()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_1

    const-string/jumbo v0, "speech_shutter_desc"

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getTipsState(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSpeechShutterOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const v2, 0x7f110874

    invoke-interface {p0, v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public reCheckSubtitleMode()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isVideoRecoding(Lcom/android/camera/module/BaseModule;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    const v1, 0x7f1107f5

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSubtitleHint(II)V

    :cond_2
    return-void
.end method

.method public reCheckSuperEIS()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    const v1, 0x7f11087f

    const-string/jumbo v2, "super_eis"

    invoke-interface {v0, v2, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reCheckSuperEISPro()V
    .locals 6

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningEisPro()Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentPreValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "pro"

    const-string v4, "normal"

    const-string/jumbo v5, "super_eis"

    if-eqz v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 v2, 0x8

    if-eqz p0, :cond_2

    const p0, 0x7f110880

    invoke-interface {v0, v5, v2, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f110882

    invoke-interface {v0, v5, v2, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const p0, 0x7f11087f

    invoke-interface {v0, v5, v2, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f110881

    invoke-interface {v0, v5, v2, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public reCheckTilt()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/16 v1, 0xe4

    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSlideSwitchLayout(ZI)V

    :cond_1
    return-void
.end method

.method public reCheckTimerBurst()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/timerburst/TimerBurstController;->isSupportTimerBurst(I)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    const v1, 0x7f1108d7

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertTimerBurstHint(II)V

    :cond_4
    return-void
.end method

.method public reCheckUltraWideBokeh()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    const-string v1, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p0

    const-string/jumbo v1, "ultra_wide_bokeh"

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    const v2, 0x7f1108f6

    invoke-interface {v0, v1, p0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    const v2, 0x7f1108f5

    invoke-interface {v0, v1, p0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reCheckVideo4KHDR10P()V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->is4KHDR10P(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_3

    const v1, 0x7f0a0088

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v0

    const v1, 0xfffa

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string v2, "pref_camcorder_tip_4khdr10p_max_video_duration_shown"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f110206

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "4khdr10p_desc"

    invoke-interface {v0, v1, v4, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public reCheckVideoBeautify()V
    .locals 4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 v1, 0xa2

    if-eq p0, v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getItems()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    const-string/jumbo v2, "video_beautify"

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v3, 0x1

    if-le p0, v3, :cond_4

    const p0, 0x7f11090d

    invoke-interface {v0, v2, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_0

    :cond_4
    const p0, 0x7f11090c

    invoke-interface {v0, v2, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public reCheckVideoBeautyPipeline()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    :cond_2
    return-void
.end method

.method public reCheckVideoCastPauseState()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const v1, 0x7f110920

    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertCastVideoHint(II)V

    return-void
.end method

.method public reCheckVideoHDR10Tip()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f110936

    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f110937

    invoke-interface {p0, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reCheckVideoHdr()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "off"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    invoke-interface {v0, p0, p0, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reCheckVideoLog()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    const v1, 0x7f110737

    invoke-interface {v0, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    :cond_2
    return-void
.end method

.method public reCheckVideoUltraClearTip()V
    .locals 7

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->getVideoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget v2, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {p0, v2, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->is8KQuality(II)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v3, :cond_3

    const v4, 0x7f0a0088

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v3

    const v4, 0xfffa

    if-ne v3, v4, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xac

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    :cond_4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isReal8K()Z

    move-result v1

    if-nez v1, :cond_5

    const v1, 0x7f11093c

    invoke-interface {v3, v4, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertVideoUltraClear(II)V

    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const/4 v5, 0x1

    const-string v6, "pref_camcorder_tip_8k_max_video_duration_shown"

    invoke-virtual {v1, v6, v5}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    invoke-interface {v1, v6, v4}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    if-eqz v3, :cond_6

    invoke-direct {p0, v2, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->is8KQuality(II)Z

    move-result p0

    if-eqz p0, :cond_6

    const p0, 0x7f110205

    const-string v0, "8k_desc"

    invoke-interface {v3, v0, v4, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    :cond_6
    return-void
.end method

.method public reConfigAiAudio(Landroid/content/Context;IZ)V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudio()Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p2, "reConfigAiAudio:SupportAiAudioNew"

    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7f1106e5

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentStringRes(I)I

    move-result p0

    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result p2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v2, -0x1

    if-eq p0, v2, :cond_4

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    const/16 p2, 0x8

    invoke-interface {v1, p2, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioBGHint(II)V

    invoke-interface {v1, p2, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudio(II)V

    sget-boolean p3, Lcom/mi/config/Device;->IS_K1:Z

    if-eqz p3, :cond_1

    const p3, 0x7f11080e

    goto :goto_1

    :cond_1
    const p3, 0x7f11080d

    :goto_1
    const-string v2, "ai_aduio_new_desc"

    invoke-interface {v1, v2, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioNewDescTip(Ljava/lang/String;II)V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string p3, "reConfigAiAudio -> isSupportAiAudioNew"

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {v1, p1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioMutexToastIfNeed(Landroid/content/Context;I)V

    goto :goto_2

    :cond_2
    invoke-interface {v1, p1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudioMutexToastIfNeed(Landroid/content/Context;I)V

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    invoke-interface {v1, p1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiAudio(II)V

    :cond_4
    :goto_2
    return-void
.end method

.method public reConfigESPDisplay()V
    .locals 7

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const v4, 0x7f110356

    const v5, 0x7f110607

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTopMenu()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v1, "esp_display"

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera/Display;->isFoldDisplayType()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    invoke-interface {v0, v1, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_4

    :cond_3
    invoke-static {}, Lcom/android/camera/Display;->isFoldDisplayType()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    invoke-interface {v0, v1, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportExtraMenu()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    invoke-static {}, Lcom/android/camera/Display;->isFoldDisplayType()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    :goto_3
    invoke-interface {v0, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertEspDisplay(II)V

    :cond_8
    :goto_4
    return-void
.end method

.method public reConfigSpeechShutter()V
    .locals 6

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSpeechShutter()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;->processingSpeechShutter(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSpeechShutterOpen()Z

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setSpeechShutterStatus(Z)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    if-eqz v1, :cond_5

    const/16 v3, 0xb9

    if-eq p0, v3, :cond_3

    const/16 v3, 0xd5

    if-ne p0, v3, :cond_5

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0x1a2

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->getMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-eq v4, v5, :cond_4

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$CloneProcess;->getMode()Lcom/xiaomi/fenshen/FenShenCam$Mode;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v3, v4, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    const/16 v3, 0xfe

    if-eq p0, v3, :cond_7

    const/16 v3, 0xd1

    if-eq p0, v3, :cond_7

    const/16 v3, 0xd2

    if-ne p0, v3, :cond_6

    goto :goto_0

    :cond_6
    move v2, v1

    :cond_7
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v1, 0xa2

    invoke-virtual {p0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz p0, :cond_8

    invoke-interface {p0, v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingSpeechShutter(Z)V

    :cond_8
    if-eqz v0, :cond_9

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;->processingSpeechShutter(Z)V

    :cond_9
    return-void
.end method

.method public recheckVideoFps(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$T0ku7USwpBsUOrumotTYhmzLPEE;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$T0ku7USwpBsUOrumotTYhmzLPEE;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public resetMeter(I)V
    .locals 3

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigMeter()Lcom/android/camera/data/data/config/ComponentConfigMeter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reverseExpandTopBar(Z)Z

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    new-array p1, v2, [I

    const/4 v0, 0x0

    const/16 v2, 0xd6

    aput v2, p1, v0

    invoke-interface {v1, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$BIpRpU_7P5CubonkZbF7L07kOqg;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$BIpRpU_7P5CubonkZbF7L07kOqg;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public restoreAllMutexElement(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_d

    aget v3, v3, v2

    const/16 v4, 0xc1

    if-eq v3, v4, :cond_c

    const/16 v4, 0xc2

    if-eq v3, v4, :cond_b

    const/16 v4, 0xc4

    const/4 v5, 0x2

    if-eq v3, v4, :cond_a

    const/16 v4, 0xc9

    if-eq v3, v4, :cond_9

    const/16 v4, 0xce

    const/16 v6, 0x32

    if-eq v3, v4, :cond_7

    const/16 v4, 0xd1

    if-eq v3, v4, :cond_6

    const/16 v4, 0xd4

    if-eq v3, v4, :cond_5

    const/16 v4, 0xed

    if-eq v3, v4, :cond_4

    const/16 v4, 0xef

    if-eq v3, v4, :cond_3

    const/16 v4, 0xfd

    if-eq v3, v4, :cond_2

    const/16 v4, 0xfe

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateEyeLight(Z)V

    const/16 v3, 0x2d

    aput v3, v0, v2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unknown mutex element"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAutoZoom(Z)V

    const/16 v3, 0x33

    aput v3, v0, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    const/16 v3, 0xd

    aput v3, v0, v2

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateRaw(Z)V

    const/16 v3, 0x2c

    aput v3, v0, v2

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentShine(Z)V

    aput v5, v0, v2

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateUltraPixel(Z)V

    aput v6, v0, v2

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateLiveShot(Z)V

    const-string v3, "j"

    if-eq p1, v3, :cond_8

    const/16 v3, 0x31

    aput v3, v0, v2

    goto :goto_1

    :cond_8
    aput v6, v0, v2

    goto :goto_1

    :cond_9
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAiScene(Z)V

    const/16 v3, 0x24

    aput v3, v0, v2

    goto :goto_1

    :cond_a
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    aput v5, v0, v2

    goto :goto_1

    :cond_b
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)V

    const/16 v3, 0xb

    aput v3, v0, v2

    goto :goto_1

    :cond_c
    invoke-direct {p0, v5, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    const/16 v3, 0xa

    aput v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    iput-object v5, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$S9ma-aMaVbmP99IupRb3tJ0fGeY;

    invoke-direct {p1, v0}, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$S9ma-aMaVbmP99IupRb3tJ0fGeY;-><init>([I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public restoreMutexFlash(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$V0eoIW_OveWpIpO_PyR1Fxmi8u8;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$V0eoIW_OveWpIpO_PyR1Fxmi8u8;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setEyeLight(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setEyeLight(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/camera/constant/EyeLightConstant;->getString(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0xa

    const/4 v2, 0x4

    invoke-interface {v0, v1, p1, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$LqtMWOqIBpxhha0JfM7610onEtY;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$LqtMWOqIBpxhha0JfM7610onEtY;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setFilter(I)V
    .locals 5

    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->persistFilter(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-eq v0, p1, :cond_1

    const/16 v3, 0xb4

    if-ne v1, v3, :cond_1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setVideoQuality8KOff(I)V

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setProVideoLog(Z)V

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    :cond_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_5

    :cond_2
    if-eq v0, p1, :cond_5

    const/16 v0, 0xa9

    if-ne v1, v0, :cond_5

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhance()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isSupportFastmotionEnhancePro()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->setSwitchOff(I)V

    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    :cond_5
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0xa4

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configGroupSwitch(I)V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xea

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;

    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFilter: filterId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", FilterProtocol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFilterChanged: category = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    const/16 v1, 0xc4

    invoke-interface {v0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;->onShineChanged(ZI)V

    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelFront32MPOn()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSwitchUltraPixel(I)V

    :cond_8
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p1, v0, :cond_9

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDocumentMode(I)V

    :cond_9
    return-void
.end method

.method public setKaleidoscope(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xec

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$KaleidoscopeProtocol;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$KaleidoscopeProtocol;->onKaleidoscopeChanged(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xea

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    const/16 v0, 0xc4

    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$OnShineChangedProtocol;->onShineChanged(ZI)V

    :cond_1
    return-void
.end method

.method public setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    sget-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLighting: newValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getPortraitLightVersion()I

    move-result v1

    const-string v2, "0"

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_0
    new-array p2, v3, [I

    const/16 v4, 0xcb

    const/4 v5, 0x0

    aput v4, p2, v5

    invoke-interface {v0, p2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    if-le v1, v3, :cond_2

    :cond_1
    move v5, v3

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v1, 0xa6

    invoke-virtual {p2, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v4, 0xa2

    invoke-virtual {v1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v5, :cond_3

    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->lightingCancel()V

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xc5

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    const/4 p2, 0x6

    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onRestoreCameraActionMenu(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa0

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p1, :cond_4

    const/16 p2, 0x21

    invoke-interface {p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->lightingStart()V

    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->setLightingViewStatus(Z)V

    :cond_4
    :goto_0
    if-ne p3, v2, :cond_5

    const/4 p1, -0x1

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertLightingTip(I)V

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$EJ9L27-GhmDaqsvCgsoLTF1aRdI;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$EJ9L27-GhmDaqsvCgsoLTF1aRdI;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz p4, :cond_6

    const/16 p0, 0xab

    invoke-static {p0, p3}, Lcom/android/camera/statistic/CameraStatUtils;->trackLightingChanged(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public setMasterFilter(I)V
    .locals 7

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result v0

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setVideoMasterFilter(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mutexBeautyBusiness(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoBeautifyForTrueVideoBokeh(ILjava/util/Optional;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xac

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/16 v6, 0x107

    aput v6, v5, v4

    invoke-interface {v3, v5}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_2
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    if-ne v0, p1, :cond_6

    :cond_4
    const/16 v3, 0xc8

    if-eq p1, v3, :cond_6

    if-eq p1, v3, :cond_7

    if-eqz p1, :cond_7

    if-eq v0, v3, :cond_5

    if-nez v0, :cond_7

    :cond_5
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->isOnlySupportMasterFilter720P()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-direct {p0, v1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeModeWithoutConfigureData(IZ)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xb6

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    :cond_7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMasterFilter: filterId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFilterChanged: category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    const/16 p1, 0xc4

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->onShineChanged(I)V

    return-void
.end method

.method public setSkinColor(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setSkinColor(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$wRAx1WcW-hIodCxuV3l66LpFcxY;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$wRAx1WcW-hIodCxuV3l66LpFcxY;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setVideoSky(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningVideoSky()Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->setMagicVideoSkyValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x57

    aput v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method public setWatermarkEnable(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->clearToast()V

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showDualController(Z)V

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showWatermarkSample(Z)V

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showOrHideTipImage(Z)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xfd

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directShowOrHideLeftTipImage(Z)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directShowOrHideLeftTipImage(Z)V

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    const/4 p1, 0x2

    const/4 v0, 0x6

    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->dismiss(II)Z

    :cond_2
    return-void
.end method

.method public showMimojiPanel(I)Z
    .locals 8

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

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

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xc5

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMimojiPanelState(I)V

    const/4 v5, 0x1

    new-array v6, v5, [I

    const/16 v7, 0xc1

    aput v7, v6, v4

    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateMimojiBottomTipImage()V

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isShowMimojiView(Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    :goto_0
    move v4, v5

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isShowMimojiView(Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    return v5

    :cond_3
    if-eqz p1, :cond_7

    const-string p0, "avatar"

    if-eq p1, v5, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo p0, "timbre"

    goto :goto_2

    :cond_5
    const-string p0, "background"

    :cond_6
    :goto_2
    const-string v1, "key_mimoji_show_list"

    invoke-static {p0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/16 p0, 0xe

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    if-eqz p1, :cond_8

    const/16 p0, 0xa8

    invoke-interface {v3, p0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onSwitchLiveActionMenu(I)V

    goto :goto_3

    :cond_8
    const/4 p0, 0x6

    invoke-interface {v3, p0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onRestoreCameraActionMenu(I)V

    :goto_3
    return v5

    :cond_9
    :goto_4
    return v4
.end method

.method public showOrHideAIWatermark()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->clearToast()V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xfd

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xc5

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p0, 0x2

    const/4 v0, 0x6

    invoke-interface {v1, p0, v0}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->dismiss(II)Z

    goto :goto_2

    :cond_3
    invoke-interface {v2, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->expandAIWatermarkBottomMenu(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;)V

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->show()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_5

    const/16 v1, 0x15

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_5
    :goto_1
    const/16 v0, 0xbc

    if-eq p0, v0, :cond_6

    const-string p0, "ai_watermark_list_show"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackAIWatermarkClick(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p0, "attr_super_moon_click_effect"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackSuperMoonClick(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public showOrHideFilter()V
    .locals 8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowLightingView()Z

    move-result v2

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilterView()Z

    move-result v3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xb6

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$DualController;

    const/16 v5, 0xab

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideLightingView()Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v2

    const-string v6, "0"

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v2, v1, v6, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-ne v0, v5, :cond_2

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$DualController;->showBokehButton()V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p0, :cond_6

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateLeftTipImage()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->updateLeftTipImage()V

    :cond_5
    :goto_0
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reConfigQrCodeTip()Z

    :cond_6
    return-void
.end method

.method public showOrHideLighting(Z)V
    .locals 12

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->beautyMutexHandle()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideLightingView()Z

    move-result v1

    sget-object v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showOrHideLighting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xaf

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xb6

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$DualController;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xc5

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    const-string v6, "0"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0xab

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Optional;->isPresent()Z

    move-result v11

    if-nez v11, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getPortraitLightVersion()I

    move-result v11

    if-gt v11, v7, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v7

    invoke-virtual {v10}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v10}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    sget v7, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setFilter(I)V

    :cond_2
    if-eqz v4, :cond_3

    invoke-interface {v4, v8}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideBokehButton(Z)V

    :cond_3
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directHideTipImage()V

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    const/16 v2, 0xa7

    invoke-interface {v5, v2}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->onSwitchLiveActionMenu(I)V

    const v2, 0x7f0a0089

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v4, 0xff7

    if-eq v2, v4, :cond_4

    const/16 v2, 0x21

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v6, v0, v8}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getPortraitLightVersion()I

    move-result v4

    if-gt v4, v7, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v2

    invoke-virtual {v2, v9, v6}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v6, v2

    :goto_0
    invoke-virtual {p0, v7, v0, v6, v8}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideLeftTipImage()V

    :cond_7
    return-void
.end method

.method public showOrHideMasterFilter()V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x3a6

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showOrHideMasterFilter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xaf

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideQrCodeTip()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    const/16 v3, 0x8

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->setPortraitHintVisible(I)V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideTipImage()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideLeftTipImage()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideRightTipImage()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideCenterTipImage()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directHideLeftImageIntro()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->directHideLyingDirectHint()V

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xb6

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xac

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    invoke-interface {v0, v2, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v3, 0xb5

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    const/16 v3, 0xa7

    if-eq p0, v3, :cond_4

    const/16 v3, 0xb4

    if-eq p0, v3, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xc5

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMasterFilter()Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->expandMasterFilterBottomMenu(Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;)V

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->show()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_8

    const/16 v0, 0x25

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    const/4 p0, 0x2

    const/4 v0, 0x6

    invoke-interface {v1, p0, v0}, Lcom/android/camera/protocol/ModeProtocol$MasterFilterProtocol;->dismiss(II)Z

    :cond_8
    :goto_1
    return-void
.end method

.method public showOrHideShine()V
    .locals 13

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xc2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xac

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    sget-object v7, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showOrHideShine: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v9

    const/16 v10, 0xa2

    if-eq v1, v10, :cond_3

    const/16 v11, 0xcc

    if-eq v1, v11, :cond_2

    move v4, v5

    goto/16 :goto_5

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeVideoFast()Z

    move v11, v4

    goto :goto_1

    :cond_3
    move v11, v5

    :goto_1
    const-string/jumbo v12, "video_beautify"

    invoke-direct {p0, v12, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->setTipsState(Ljava/lang/String;Z)V

    if-nez v8, :cond_4

    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mutexBeautyBusiness(I)V

    goto :goto_2

    :cond_4
    move v11, v4

    move v6, v5

    :goto_2
    if-eqz v6, :cond_5

    invoke-virtual {v9, v4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setTargetShow(Z)V

    :cond_5
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mi/config/DataItemFeature;->isDualCameraShineVideoBokeh()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    sget-object v12, Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$BPaeQiRzZ3x89uxWZAuhNi2wmrw;->INSTANCE:Lcom/android/camera/module/impl/component/-$$Lambda$ConfigChangeImpl$BPaeQiRzZ3x89uxWZAuhNi2wmrw;

    invoke-virtual {v0, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    invoke-virtual {v9}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isTopBeautyEntry()Z

    move-result v0

    if-eqz v0, :cond_7

    xor-int/lit8 v0, v8, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->singeSwitchVideoBeauty(Z)V

    goto :goto_3

    :cond_7
    xor-int/lit8 v0, v8, 0x1

    invoke-virtual {v9, v10, v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->setVideoShineForceOn(IZ)V

    if-eqz v3, :cond_8

    new-array v0, v4, [I

    const/16 v8, 0xd4

    aput v8, v0, v5

    invoke-interface {v3, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_8
    :goto_3
    if-eqz v11, :cond_9

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setFaceBeautySmoothLevel(I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->resetVideoFilter()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setVideoBokehRatio(F)V

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setVideoBokehColorRetentionMode(I)V

    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onShineStateChanged()V

    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged()V

    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onVideoBokehRatioChanged()V

    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onVideoFilterChanged()V

    :cond_9
    if-eqz v11, :cond_b

    if-ne v1, v10, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckVideoBeautyPipeline()V

    goto :goto_4

    :cond_a
    invoke-direct {p0, v10}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reCheckVideoBeautyPipeline()V

    :goto_4
    invoke-virtual {v9}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isTopBeautyEntry()Z

    move-result p0

    if-eqz p0, :cond_c

    return-void

    :cond_c
    :goto_5
    const/4 p0, 0x2

    if-eqz v6, :cond_15

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v6, 0xaf

    invoke-virtual {v0, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    const/16 v6, 0x8

    invoke-interface {v0, v6}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->setPortraitHintVisible(I)V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideTipImage()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideLeftTipImage()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideRightTipImage()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideCenterTipImage()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directHideLeftImageIntro()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->directHideLyingDirectHint()V

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideNightSeTip()V

    :cond_d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v6, 0xb6

    invoke-virtual {v0, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    const/16 v6, 0xab

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    if-eq v1, v6, :cond_e

    if-nez v4, :cond_e

    if-eqz v3, :cond_e

    invoke-interface {v3, v5, v5, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_e
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xb5

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    const/16 v4, 0xa3

    if-eq v1, v4, :cond_12

    const/16 v4, 0xa7

    if-eq v1, v4, :cond_11

    if-eq v1, v6, :cond_10

    const/16 v0, 0xb4

    if-eq v1, v0, :cond_11

    const/16 v0, 0xbb

    if-eq v1, v0, :cond_f

    goto :goto_6

    :cond_f
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;

    if-eqz v0, :cond_13

    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;->setSelectorLayoutVisible(Z)V

    goto :goto_6

    :cond_10
    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isButtonVisible()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideBokehButton(Z)V

    goto :goto_6

    :cond_11
    if-eqz v3, :cond_13

    invoke-interface {v3, v5}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    goto :goto_6

    :cond_12
    if-eqz v3, :cond_13

    const/4 v0, 0x4

    invoke-interface {v3, v5, v0, v7}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    :cond_13
    :goto_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    invoke-interface {v0, v9}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->expandShineBottomMenu(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    if-eqz v2, :cond_14

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->show()V

    goto :goto_7

    :cond_14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_16

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_7

    :cond_15
    if-eqz v2, :cond_16

    invoke-interface {v2, p0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->dismiss(I)V

    :cond_16
    :goto_7
    return-void
.end method

.method public showOrHideVideoSky(Z)V
    .locals 8

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportVideoSKy()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x2a8

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProtocol;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProtocol;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    sget-object v5, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showOrHideMagicVideoSky fromTopConfig:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " targetShowPanel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x6

    const/4 v6, 0x2

    if-eqz p1, :cond_6

    const/16 p1, 0xb7

    const/16 v7, 0xd7

    if-ne v0, v7, :cond_3

    if-eqz v1, :cond_2

    invoke-interface {v1, v6, v5}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProtocol;->dismiss(II)Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_3
    if-ne v0, p1, :cond_4

    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->changeMode(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0x3a1

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;

    if-eqz p0, :cond_5

    const-string/jumbo p1, "videosky"

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;->hasFeatureInstalled(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_4
    move v2, v4

    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningVideoSky()Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->reset(I)V

    move v4, v2

    :cond_6
    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xaf

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideQrCodeTip()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    const/16 p1, 0x8

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->setPortraitHintVisible(I)V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideLeftTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideRightTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideCenterTipImage()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directHideLeftImageIntro()V

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$LyingDirectHint;->directHideLyingDirectHint()V

    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xb6

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->hideZoomButton()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_8

    const/4 p1, 0x0

    invoke-interface {p0, v3, v3, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xc5

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningVideoSky()Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomMenuProtocol;->expandVideoSkyBottomMenu(Lcom/android/camera/data/data/config/ComponentRunningVideoSky;)V

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProtocol;->show()V

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa0

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz p0, :cond_b

    const/16 p1, 0x29

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_3

    :cond_a
    if-eqz v1, :cond_b

    invoke-interface {v1, v6, v5}, Lcom/android/camera/protocol/ModeProtocol$VideoSkyProtocol;->dismiss(II)Z

    :cond_b
    :goto_3
    return-void
.end method

.method public showSetting()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string v2, "config showSetting"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xd8

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->switchOffElementsSilent([I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    const-string v4, "from_where"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v3

    const-string v4, "intent_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentVideoQuality()I

    move-result v3

    const-string v5, "intent_video_quality"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f110702

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ":miui:starting_window_label"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "StartActivityWhenLocked"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGotoSettings()V

    return-void
.end method

.method public showWatermarkSample(Z)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x58

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->findBestWatermarkItem(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setWatermarkVisible(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs switchOffElementsSilent([I)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget v2, p1, v1

    const/16 v3, 0xcb

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd1

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getRecordingClosedElements()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingClosedElements:[I

    if-eqz v2, :cond_1

    const-string v2, "j"

    invoke-virtual {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->restoreAllMutexElement(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->switchOffUltraPixel()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowLightingView()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideLightingView()Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateASDForWatermark()V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x49

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method
