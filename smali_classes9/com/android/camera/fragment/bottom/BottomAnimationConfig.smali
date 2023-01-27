.class public Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
.super Ljava/lang/Object;
.source "BottomAnimationConfig.java"


# instance fields
.field public mCurrentMode:I

.field public mDuration:I

.field public mIsFPS960:Z

.field public mIsInMimojiCreate:Z

.field public mIsPostProcessing:Z

.field public mIsRecordingCircle:Z

.field public mIsRoundingCircle:Z

.field public mIsSpecificCaptureTime:Z

.field public mIsStart:Z

.field public mIsTimerBurstCircle:Z

.field public mIsVertical:Z

.field public mIsVideoBokeh:Z

.field public mNeedFinishRecord:Z

.field public mSecondPaintHintEnable:Z

.field public mShouldRepeat:Z

.field public mStopButtonEnabled:Z


# direct methods
.method private constructor <init>(ZIZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mSecondPaintHintEnable:Z

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsPostProcessing:Z

    iput p2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    iput-boolean p3, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsStart:Z

    iput-boolean p4, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    iput-boolean p5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVideoBokeh:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    return-void
.end method

.method public static generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
    .locals 7

    new-instance v6, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;-><init>(ZIZZZ)V

    return-object v6
.end method

.method private isLongExpose()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
    .locals 13

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    const/16 v1, 0xd4

    const/16 v2, 0xa1

    const/16 v3, 0xa3

    const/16 v4, 0xa2

    const/16 v5, 0x7d0

    const/16 v6, 0xb8

    const/16 v7, 0xad

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    iput v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-ne v0, v7, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsStart:Z

    xor-int/2addr v0, v8

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mSecondPaintHintEnable:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMultiFrameTotalCaptureDuration()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isNightCaptureAnimEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getNightCaptureAnimDuration()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    :cond_2
    iput v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    :cond_3
    if-ne v0, v4, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVideoBokeh:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    :cond_4
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-ne v0, v2, :cond_5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object v0

    iget v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v5, 0xc9

    invoke-virtual {v0, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;

    if-eqz v0, :cond_f

    iget v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    int-to-float v5, v5

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->getRecordSpeed()F

    move-result v0

    div-float/2addr v5, v0

    float-to-int v0, v5

    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    :cond_5
    const/16 v5, 0x3a98

    if-ne v0, v6, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    :cond_6
    iput v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    :cond_7
    const/16 v9, 0xae

    if-ne v0, v9, :cond_8

    const/16 v0, 0x3c28

    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_1

    :cond_8
    const/16 v9, 0xb7

    if-ne v0, v9, :cond_9

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object v0

    iget v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    :cond_9
    const/16 v9, 0xd7

    if-ne v0, v9, :cond_a

    iput v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    :cond_a
    if-eq v0, v3, :cond_e

    const/16 v9, 0xa5

    if-ne v0, v9, :cond_b

    goto :goto_0

    :cond_b
    const/16 v5, 0xa7

    if-ne v0, v5, :cond_c

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->isLongExpose()Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v8, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    iget v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/32 v11, 0xf4240

    div-long/2addr v9, v11

    long-to-int v0, v9

    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    :cond_c
    const/16 v5, 0x2710

    if-ne v0, v1, :cond_d

    iput v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    :cond_d
    iput v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_1

    :cond_e
    :goto_0
    iput v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightCaptureInProgress()Z

    move-result v5

    if-eqz v5, :cond_f

    iput-boolean v8, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    :cond_f
    :goto_1
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/4 v5, 0x0

    if-eq v0, v3, :cond_11

    if-eq v0, v2, :cond_11

    if-eq v0, v6, :cond_11

    if-ne v0, v4, :cond_10

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVideoBokeh:Z

    if-nez v0, :cond_11

    :cond_10
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-eq v0, v7, :cond_11

    iget-boolean v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    if-nez v2, :cond_11

    const/16 v2, 0xbd

    if-eq v0, v2, :cond_11

    if-eq v0, v1, :cond_11

    move v0, v8

    goto :goto_2

    :cond_11
    move v0, v5

    :goto_2
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-ne v0, v7, :cond_12

    move v0, v8

    goto :goto_3

    :cond_12
    move v0, v5

    :goto_3
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRecordingCircle:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isSupportTimerBurst(I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v8

    goto :goto_4

    :cond_13
    move v0, v5

    :goto_4
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsTimerBurstCircle:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    if-eqz v0, :cond_15

    :cond_14
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    :cond_15
    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-eq v0, v7, :cond_16

    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    if-eqz v0, :cond_17

    :cond_16
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsPostProcessing:Z

    if-nez v0, :cond_17

    move v0, v8

    goto :goto_5

    :cond_17
    move v0, v5

    :goto_5
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mNeedFinishRecord:Z

    iput-boolean v8, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_18

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->shouldDisableStopButton()Z

    move-result v1

    xor-int/2addr v1, v8

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->getAutoFinish()Z

    move-result v1

    xor-int/2addr v1, v8

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->getAutoFinish()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRecordingCircle:Z

    goto :goto_6

    :cond_18
    const/16 v1, 0xd0

    if-eq v0, v1, :cond_19

    if-ne v0, v6, :cond_1a

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    iput-boolean v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    :cond_1a
    :goto_6
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVertical:Z

    return-object p0
.end method

.method public setSpecifiedDuration(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    return-void
.end method
