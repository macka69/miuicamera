.class public Lcom/android/camera2/MiCamera2ShotParallelBurst;
.super Lcom/android/camera2/MiCamera2ShotParallel;
.source "MiCamera2ShotParallelBurst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2ShotParallel<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotParallelBurst"


# instance fields
.field private mAlgoType:I

.field private mAnchorFrame:Z

.field private mBaseEvValue:I

.field private mCaptureTimestamp:J

.field private mCompletedNum:I

.field private mFirstNum:Z

.field private mHdrCaptureRequestSettings:[I

.field private mHdrCheckerAdrc:I

.field private mHdrCheckerEvValue:[I

.field private mHdrCheckerSceneType:I

.field private mHdrType:I

.field private mIsFakeSatEnabled:Z

.field private mIsHdrBokeh:Z

.field private mIsHdrSR:Z

.field private mIsSatFusionShotEnabled:Z

.field private mMainPhysicalCameraId:I

.field private mMultiFrameNum:I

.field private mNbrOfNonBaseEVs:I

.field private volatile mNeedDoAnchorFrame:Z

.field private final mOperationMode:I

.field private mPreviewSize:Lcom/android/camera/CameraSize;

.field private mRawCallbackType:I

.field private mSequenceNum:I

.field private mShouldDoMFNR:Z

.field private mShouldDoSR:Z

.field private mSingleCaptureForHDRplusMFNR:Z

.field private mSubPhysicalCameraId:I

.field private mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

.field private final mUseParallelVtCam:Z

.field private mZslHdrEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;ZI)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCaptureTimestamp:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNeedDoAnchorFrame:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSubPhysicalCameraId:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    iput-boolean p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getOperatingMode()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mOperationMode:I

    iput p4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAnchorFrame:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNeedDoAnchorFrame:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCaptureTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/camera2/MiCamera2ShotParallelBurst;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCaptureTimestamp:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/camera2/MiCamera2ShotParallelBurst;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNeedDoAnchorFrame:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    return p0
.end method

.method static synthetic access$1108(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSubPhysicalCameraId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mPreviewSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mFirstNum:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/camera2/MiCamera2ShotParallelBurst;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mFirstNum:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsSatFusionShotEnabled:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera2/MiCamera2ShotParallelBurst;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    return-object p0
.end method

.method private applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_5

    const/4 v2, 0x2

    if-eq p3, v2, :cond_4

    const/4 v2, 0x3

    if-eq p3, v2, :cond_3

    const/4 v2, 0x7

    if-eq p3, v2, :cond_1

    const/16 v0, 0xc

    if-eq p3, v0, :cond_0

    const/16 v0, 0xf

    if-eq p3, v0, :cond_0

    const/16 v0, 0x9

    if-eq p3, v0, :cond_2

    const/16 v0, 0xa

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applySuperNightParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const-string p2, "ShotParallelBurst"

    const-string p3, "HHT algo in applyAlgoParameter"

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyLowLightBokehParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applySuperResolutionParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyClearShotParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :goto_0
    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->copyAiSceneFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallback(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method private applyClearShotParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {}, Lcom/mi/config/Device;->isGlobalE5()Z

    move-result p0

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/mi/config/Device;->IS_F3B:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_1
    return-void
.end method

.method private applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 9

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-gt p2, v0, :cond_19

    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpExtra4Mmcam()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v0, v0, p2

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpExtra4Mmcam()Z

    move-result v0

    const/4 v3, 0x2

    const-string v4, "ShotParallelBurst"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "[ALGOUP|MMCAMERA] Algo Up HDR!!!!"

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    mul-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :goto_2
    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/Device;->IS_F4:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/Device;->IS_J2:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/Device;->IS_J11_PRO:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/Device;->IS_J1:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/Device;->IS_J1S:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/Device;->IS_J3S:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/Device;->IS_K1A:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mi/config/Device;->IS_K1:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {p1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_5
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v5, v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v0, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyZslHdrEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    sget-boolean v0, Lcom/mi/config/Device;->IS_F4:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v0, v0, p2

    if-ltz v0, :cond_b

    :goto_3
    move v0, v2

    goto :goto_4

    :cond_6
    aget v0, v0, p2

    if-ne v0, v2, :cond_b

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->performSingleCaptureForHdrPlusMfnr()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v0, v0, p2

    if-nez v0, :cond_b

    goto :goto_3

    :cond_8
    aget v0, v0, p2

    if-ne v0, v2, :cond_b

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportMultiHdrSingleMfnr()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v0, v0, p2

    if-nez v0, :cond_b

    goto :goto_3

    :cond_a
    aget v0, v0, p2

    if-ne v0, v2, :cond_b

    goto :goto_3

    :cond_b
    move v0, v1

    :goto_4
    iget v5, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    const/4 v6, 0x4

    if-ne v5, v2, :cond_c

    :goto_5
    move v3, v2

    goto :goto_6

    :cond_c
    if-ne v5, v3, :cond_d

    goto :goto_5

    :cond_d
    const/4 v3, 0x3

    if-ne v5, v3, :cond_e

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isTeleHdrPlusMfnrSupported()Z

    move-result v3

    goto :goto_6

    :cond_e
    if-ne v5, v6, :cond_f

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isUltraTeleHdrPlusMfnrSupported()Z

    move-result v3

    goto :goto_6

    :cond_f
    move v3, v1

    :goto_6
    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v5

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v7

    if-ne v5, v7, :cond_10

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/device/Common;->isFrontCameraHdrPlusMfnrSupported()Z

    move-result v5

    goto :goto_7

    :cond_10
    move v5, v1

    :goto_7
    const-string v7, "applyHdrParameter enable mfnr EV = "

    if-eqz v0, :cond_11

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v8

    if-eqz v8, :cond_11

    iget v8, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ge v8, v6, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto/16 :goto_8

    :cond_11
    if-eqz v0, :cond_12

    if-eqz v5, :cond_12

    iget v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ge v5, v6, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_8

    :cond_12
    iget-boolean v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    if-eqz v5, :cond_13

    const-string p2, "applyHdrParameter enable mfnr"

    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_8

    :cond_13
    if-eqz v0, :cond_14

    if-eqz v3, :cond_14

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isSupportMultiHdrSingleMfnr()Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_8

    :cond_14
    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_8

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyHdrParameter disable mfnr EV = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget p2, v3, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :goto_8
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->isSupportHdrBokeh()Z

    move-result p2

    if-eqz p2, :cond_16

    iget-boolean p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_16
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mi/config/DataItemFeature;->supportMtkIspHidl()Z

    move-result p2

    if-eqz p2, :cond_18

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrType:I

    if-nez p0, :cond_17

    const-string p0, "enable isp tuning capture hint for HDR"

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x138d

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_9

    :cond_17
    if-ne p0, v2, :cond_18

    const-string p0, "enable isp tuning capture hint for LLHDR"

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x138f

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_18
    :goto_9
    return-void

    :cond_19
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "wrong request index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private applyLowLightBokehParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method private applySuperNightParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-gt p2, v0, :cond_6

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "applySuperNightParameter: request[%d].ev = %d"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShotParallelBurst"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/Device;->IS_K1:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/Device;->IS_K1A:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/mi/config/Device;->IS_J17:Z

    if-nez v0, :cond_2

    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1, v5}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "apply raw super night params"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v1

    aget p2, v1, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/16 p2, 0x1390

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperNightRawEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyMtkProcessRaw(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/16 v0, 0xf

    if-ne p2, v0, :cond_5

    const-string p2, "disable zsl for supernight se"

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v4}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v3

    aget p2, v3, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/16 p2, 0x10

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne p2, v0, :cond_5

    sget-object p2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MIVI_SUPER_NIGHT_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_5

    :cond_4
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    const-string p2, "force set mivi super night mode from %d to %d"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiviSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_5
    :goto_2
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-static {p1, p0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "wrong request index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private applySuperResolutionParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v2

    const-string v3, "ShotParallelBurst"

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportMtkIspHidl()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "enable isp tuning capture hint for MFSR"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x138e

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyNoiseReduction(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHighQualityReprocess(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-eqz v2, :cond_4

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v2, v2, p2

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    if-ne v2, v4, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSRRequireReprocess()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_1
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSRRequireReprocess()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_3
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v0, v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "HdrSrEv[%d]=%d"

    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget p0, p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_1

    :cond_4
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :goto_1
    return-void
.end method

.method private doAnchorFrameAsThumbnail()Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->isModuleAnchorFrame()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ShotParallelBurst"

    if-nez v0, :cond_0

    const-string p0, "anchor frame do not enable"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v5, 0x3

    if-ne p0, v5, :cond_2

    const/4 p0, 0x2

    invoke-virtual {v0, v3, p0}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SR anchor frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    if-ne p0, v4, :cond_4

    if-nez v3, :cond_3

    const/4 p0, 0x5

    invoke-virtual {v0, v3, p0}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result p0

    goto :goto_0

    :cond_3
    const/16 p0, 0x66

    invoke-virtual {v0, v3, p0}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDR anchor frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_4
    const/16 v5, 0xa

    if-eq p0, v5, :cond_7

    const/16 v5, 0xc

    if-ne p0, v5, :cond_5

    goto :goto_1

    :cond_5
    const/16 v0, 0xf

    if-ne p0, v0, :cond_6

    return v1

    :cond_6
    const-string p0, "default anchor frame true"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_7
    :goto_1
    const/4 p0, 0x6

    invoke-virtual {v0, v3, p0}, Lcom/android/camera2/CameraCapabilities;->isAnchorFrameType(II)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "super night anchor frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getGroupShotMaxImage()I
    .locals 2

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/camera2/params/Face;

    :goto_0
    if-eqz p0, :cond_1

    array-length p0, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    add-int/lit8 p0, p0, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method private getGroupShotNum()I
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isMemoryRich(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->getGroupShotMaxImage()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "ShotParallelBurst"

    const-string v0, "getGroupShotNum: low memory"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method

.method private initFeatureSetting()V
    .locals 8

    const-string v0, "ShotParallelBurst"

    const-string v1, "initFeatureSetting: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFeatureSetting: rawInputSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", yuvInputSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    :goto_0
    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v5

    :goto_1
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v6

    if-ne v4, v6, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_3

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initFeatureSetting: outputSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v3, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getPhotoFormat()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v4

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v4, :cond_4

    if-eqz p0, :cond_4

    new-instance v5, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    new-instance v6, Landroid/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v2

    invoke-direct {v6, v7, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v1

    invoke-direct {v2, v7, v1}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v5, v6, v2, v3}, Lcom/xiaomi/camera/isp/IspInterfaceIO;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V

    invoke-static {p0}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v4, v5, p0, v1, v2}, Lcom/android/camera/LocalParallelService$LocalBinder;->queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    :cond_4
    const-string p0, "initFeatureSetting: X"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isUpdateHDRCheckerValues()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getMagneticDetectedCallback()Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getMagneticDetectedCallback()Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;

    move-result-object p0

    const-string v0, "ShotParallelBurst"

    invoke-interface {p0, v0}, Lcom/android/camera2/Camera2Proxy$MagneticDetectedCallback;->isLockHDRChecker(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$prepareSR$0(I)Z
    .locals 0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private prepareClearShot(I)V
    .locals 0

    invoke-static {}, Lcom/mi/config/Device;->isGlobalE5()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    :goto_0
    return-void
.end method

.method private prepareGroupShot()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->getGroupShotNum()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    return-void
.end method

.method private prepareHHT()V
    .locals 3

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    const-string v1, "ShotParallelBurst"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAiASDEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isSmoothLevelOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    const-string/jumbo p0, "switch to quick shot hht(3 -> 1)"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureResultParser;->getHHTFrameNumber(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    if-lez v0, :cond_1

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHHTFrameNumber hht("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> 1)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    const-string p0, "default hht(5 -> 1)"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private prepareHdr()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isFlashHDR()Z

    move-result v0

    const-string v1, "ShotParallelBurst"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareHDR: night hdr ev_value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2, v0}, Lcom/android/camera2/MiCamera2;->useSingleCaptureForHdrPlusMfnr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareHDR: singleFrameHDR = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->isZslHdrEnabled(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareHDR: isZslHdrEnable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCaptureRequestSettings(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareHDR: requestSettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    const-string v3, "prepareHDR: illegal hdr settings"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iput-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    new-array v2, v2, [I

    const/4 v5, 0x0

    aput v5, v2, v5

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerValues(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v2

    new-instance v5, Lcom/android/camera2/vendortag/struct/HdrEvValue;

    invoke-direct {v5, v2}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([B)V

    invoke-virtual {v5}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrType()I

    move-result v2

    iput v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrType:I

    invoke-virtual {v5}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getSequenceNum()I

    move-result v2

    iput v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-virtual {v5}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrCheckerEvValue()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v0, :cond_3

    array-length v5, v0

    array-length v2, v2

    if-ge v5, v2, :cond_2

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    :goto_1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->isUpdateHDRCheckerValues()Z

    move-result v2

    const-string v5, "prepareHdr: scene = "

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerEvValue()[I

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "prepareHDR: hdr checker values not updated"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerEvValue()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v0, :cond_5

    array-length v6, v0

    array-length v2, v2

    if-ge v6, v2, :cond_4

    goto :goto_2

    :cond_4
    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    :goto_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerSceneType()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerAdrc()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",adrc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",EvValue = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz p0, :cond_6

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerSceneType(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerAdrc(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " adrc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setHdrCheckerEvValue([I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setHdrCheckerSceneType(I)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigs;->setHdrCheckerAdrc(I)V

    return-void
.end method

.method private prepareLowLightBokeh()V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    return-void
.end method

.method private prepareSR(Z)V
    .locals 5

    const-string v0, "ShotParallelBurst"

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v1}, Lcom/android/camera2/CaptureResultParser;->getHdrCaptureRequestSettings(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSR: hdr settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerValues(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v2

    new-instance v3, Lcom/android/camera2/vendortag/struct/HdrEvValue;

    invoke-direct {v3, v2, p1}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([BZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareSR: hdr ev values = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareSR: isCheckerHdrSr ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getSequenceNum()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrCheckerEvValue()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v1, :cond_1

    array-length v2, v1

    array-length p1, p1

    if-ge v2, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "prepareSR: illegal hdr settings"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    :goto_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lcom/android/camera2/-$$Lambda$MiCamera2ShotParallelBurst$lcr43RtvyaL28ga0XrtjPrhGCoA;

    invoke-direct {v0, p0}, Lcom/android/camera2/-$$Lambda$MiCamera2ShotParallelBurst$lcr43RtvyaL28ga0XrtjPrhGCoA;-><init>(Lcom/android/camera2/MiCamera2ShotParallelBurst;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->getSRFrameNumber()I

    move-result p1

    const-string v1, "camera.sr.framecount"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareSR: captureNum="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private prepareSuperNight()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getSuperNightCheckerEv(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v0

    const-string v1, "camera.debug.superlowlight"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getSuperNightEvValue()Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->parseSuperNightEvValue([BLjava/lang/String;Z)Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareSuperNight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShotParallelBurst"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getSequenceNum()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->initFeatureSetting()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;-><init>(Lcom/android/camera2/MiCamera2ShotParallelBurst;)V

    return-object v0
.end method

.method protected generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->isQcfaEnable()Z

    move-result v2

    const/16 v3, 0x10

    const/16 v4, 0x23

    const/16 v5, 0xf

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-string v8, "ShotParallelBurst"

    const/4 v9, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getQcfaRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v7

    aput-object v10, v1, v9

    const-string v12, "[QCFA]add surface %s to capture request, size is: %s"

    invoke-static {v11, v12, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-static {}, Lcom/mi/config/Device;->isGlobalE5()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/mi/config/Device;->IS_F3B:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mLockedAlgoSize:Landroid/util/Size;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1, v4}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)V

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p0, v10, v4}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)V

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v2

    const/16 v10, 0xa

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "algoType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getRemoteSurfaceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    const/16 v11, 0xc

    iget v12, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v11}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v11

    if-eq v4, v11, :cond_9

    iget-object v11, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v11}, Lcom/android/camera2/MiCamera2;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v11

    if-eq v4, v11, :cond_9

    goto :goto_1

    :cond_7
    if-ne v10, v12, :cond_8

    iget v11, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v3, v11, :cond_8

    iget-object v11, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v11}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v11

    if-eq v4, v11, :cond_9

    goto :goto_1

    :cond_8
    iget-object v11, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v11}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v11

    if-eq v11, v4, :cond_6

    iget-object v11, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v11}, Lcom/android/camera2/MiCamera2;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v11

    if-eq v11, v4, :cond_6

    iget-object v11, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v11}, Lcom/android/camera2/MiCamera2;->getTuningRemoteSurface()Landroid/view/Surface;

    move-result-object v11

    if-ne v11, v4, :cond_9

    goto :goto_1

    :cond_9
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v4, v12, v7

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v13

    aput-object v13, v12, v9

    const-string v13, "add surface %s to capture request, size is: %s"

    invoke-static {v11, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    goto/16 :goto_6

    :cond_b
    :goto_2
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v2

    iput v2, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    const/16 v2, 0x201

    iget v11, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v5, v11, :cond_c

    const/16 v4, 0x20

    :cond_c
    iget v11, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v10, v11, :cond_f

    iget v10, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v3, v10, :cond_f

    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v11, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v10, v11}, Lcom/android/camera2/MiCamera2;->getSatRawSurface(I)Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-static {v10}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v13, v1, [Ljava/lang/Object;

    aput-object v10, v13, v7

    aput-object v11, v13, v9

    const-string v10, "[SAT]add raw surface %s to capture request, size is: %s"

    invoke-static {v12, v10, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v12, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v10, v12}, Lcom/android/camera2/MiCamera2;->getMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v10

    invoke-static {v10}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v13

    if-ne v12, v13, :cond_d

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v13

    if-eq v12, v13, :cond_e

    :cond_d
    new-instance v11, Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/util/Size;-><init>(II)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[SAT]override output size to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2;->getSatPhysicalCameraId()I

    move-result v10

    iput v10, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    iget v10, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    if-ne v9, v10, :cond_17

    move v2, v6

    goto/16 :goto_5

    :cond_f
    iget-boolean v10, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-nez v10, :cond_12

    iget-boolean v10, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v11, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v10, v11}, Lcom/android/camera2/MiCamera2;->getFakeSatMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v11}, Lcom/android/camera2/MiCamera2;->getFakeSatOutputSize()Landroid/util/Size;

    move-result-object v11

    goto :goto_3

    :cond_10
    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v11, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v10, v11}, Lcom/android/camera2/MiCamera2;->getMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v10

    invoke-static {v10}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v11

    :goto_3
    iget-object v12, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v12}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera2/CameraCapabilities;->isFakeSatV2Supported()Z

    move-result v12

    if-eqz v12, :cond_11

    iget-boolean v12, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    invoke-static {v0, v12}, Lcom/android/camera2/compat/MiCameraCompat;->applyRemosaicEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_11
    iget v12, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v12, v5, :cond_13

    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-static {v10}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v11

    goto :goto_4

    :cond_12
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v10

    iget v11, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v10, v11}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSurface(I)Landroid/view/Surface;

    move-result-object v10

    invoke-static {v10}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v11

    :cond_13
    :goto_4
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v13, v1, [Ljava/lang/Object;

    aput-object v10, v13, v7

    aput-object v11, v13, v9

    const-string v14, "[SAT]add main surface %s to capture request, size is: %s"

    invoke-static {v12, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v12}, Lcom/android/camera2/MiCamera2;->getSatPhysicalCameraId()I

    move-result v12

    iput v12, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    invoke-virtual {v0, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v12, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v12}, Lcom/android/camera2/MiCamera2;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v12

    if-eq v10, v12, :cond_14

    iget-boolean v12, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-eqz v12, :cond_15

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSurface(I)Landroid/view/Surface;

    move-result-object v12

    if-ne v10, v12, :cond_15

    :cond_14
    move v2, v6

    :cond_15
    iget-boolean v10, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsSatFusionShotEnabled:Z

    if-eqz v10, :cond_16

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v10

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v13, v1, [Ljava/lang/Object;

    aput-object v2, v13, v7

    aput-object v10, v13, v9

    const-string v10, "[SAT]add ultra tele surface %s to capture request, size is: %s"

    invoke-static {v12, v10, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v10

    iput v10, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSubPhysicalCameraId:I

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_SAT_FUSION_SHOT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-static {v0, v2, v10}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    const/16 v2, 0x204

    goto :goto_5

    :cond_16
    sget-object v10, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_SAT_FUSION_SHOT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-static {v0, v10, v12}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    :cond_17
    :goto_5
    iget v10, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v5, v10, :cond_18

    const v10, 0x8014

    invoke-virtual {p0, v10, v11, v4, v2}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)V

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    goto :goto_6

    :cond_18
    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v10

    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Lcom/android/camera2/CameraCapabilities;->isHighPerformanceSessionKeySupported()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v10}, Lcom/android/camera2/CameraCapabilities;->getSupportedHdrType()I

    move-result v12

    if-ne v12, v1, :cond_1a

    invoke-virtual {v10}, Lcom/android/camera2/CameraCapabilities;->isSupportHighQualityPreferred()Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-object v10, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v10}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v10

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v12

    if-ne v10, v12, :cond_1a

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v10

    if-nez v10, :cond_1a

    iget v10, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v9, v10, :cond_19

    iget-boolean v10, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-eqz v10, :cond_1a

    :cond_19
    const v10, 0xef06

    invoke-virtual {p0, v10, v11, v4, v2}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)V

    goto :goto_6

    :cond_1a
    invoke-virtual {p0, v11, v4, v2}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;II)V

    :goto_6
    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v2

    if-nez v2, :cond_1c

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mOperationMode:I

    const v4, 0x9001

    if-eq v2, v4, :cond_1c

    invoke-static {}, Lcom/mi/config/Device;->isGlobalE5()Z

    move-result v2

    if-nez v2, :cond_1b

    sget-boolean v2, Lcom/mi/config/Device;->IS_F3B:Z

    if-nez v2, :cond_1b

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mOperationMode:I

    const v4, 0x9003

    if-eq v2, v4, :cond_1c

    :cond_1b
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v7

    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v10

    aput-object v10, v1, v9

    const-string v10, "add preview surface %s to capture request, size is: %s"

    invoke-static {v4, v10, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-nez v1, :cond_1c

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1c
    :goto_7
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->supportMtkIspHidl()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v5, v1, :cond_1d

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v1

    goto :goto_8

    :cond_1d
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getTuningRemoteSurface()Landroid/view/Surface;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_1e

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v4

    aput-object v4, v2, v7

    const-string v4, "add tuning surface to capture request, size is: %s"

    invoke-static {v8, v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1e
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v1, v6, :cond_1f

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sr algo, preview callback "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackEnabled()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackEnabled()I

    move-result v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1f

    const-string/jumbo v2, "sr add preview target"

    invoke-static {v8, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1f
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1, v0, v6}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v1, v9, :cond_21

    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz v1, :cond_20

    const-string v1, "enable ZSL for HDR"

    invoke-static {v8, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v9}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto/16 :goto_b

    :cond_20
    const-string v1, "disable ZSL for HDR"

    invoke-static {v8, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v7}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto/16 :goto_b

    :cond_21
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperMoonMode()Z

    move-result v1

    if-eqz v1, :cond_24

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v1, v6, :cond_22

    move v1, v9

    goto :goto_9

    :cond_22
    move v1, v7

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_23

    const-string v3, "enable"

    goto :goto_a

    :cond_23
    const-string v3, "disable"

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ZSL for SuperMoonMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_b

    :cond_24
    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v1

    if-nez v1, :cond_26

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_25

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportZslOnHhtCapture()Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable ZSL for algo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v9}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_b

    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable ZSL for algo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v7}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_26
    :goto_b
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isFlawDetectEnable()Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlawDetectEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->PARALLEL_MASTER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MCC_MASTER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getParallelMasterCameraId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyParallelMasterCameraId(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_27
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isLLSEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {v0, v9}, Lcom/android/camera2/compat/MiCameraCompat;->applyLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_c

    :cond_28
    invoke-static {v0, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_29
    :goto_c
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSavePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyParallelImageName(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)V

    :cond_2a
    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ShotParallelBurst"

    return-object p0
.end method

.method public isShutterReturned()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCaptureTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$prepareSR$0$MiCamera2ShotParallelBurst(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->lambda$prepareSR$0(I)Z

    move-result p0

    return p0
.end method

.method public onCaptureShutter()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/camera2/QuickViewParam;

    const/4 v2, 0x1

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAnchorFrame:Z

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3, v3}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZ)V

    invoke-interface {v0, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_0
    return-void
.end method

.method protected prepare()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mFirstNum:Z

    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare: configs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShotParallelBurst"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare: rawCallbackType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoSR:Z

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isFakeSatEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2}, Lcom/android/camera2/CaptureResultParser;->getHdrSrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare: hdrSrStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isDualBokehEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v2, v0, :cond_0

    const-string v1, "prepare: HdrSR"

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareSR(Z)V

    goto/16 :goto_6

    :cond_0
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareHdr()V

    goto/16 :goto_6

    :cond_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportLowLightBokeh()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isDualBokehEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareLowLightBokeh()V

    goto/16 :goto_6

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v1

    if-eqz v1, :cond_3

    iput v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareGroupShot()V

    goto/16 :goto_6

    :cond_3
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoSR:Z

    if-eqz v1, :cond_4

    iput v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0, v8}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareSR(Z)V

    goto/16 :goto_6

    :cond_4
    const v1, 0x800a

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mOperationMode:I

    const/16 v4, 0x20

    const/16 v9, 0x8

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-eq v9, v1, :cond_10

    if-eq v4, v1, :cond_10

    const/16 v2, 0x10

    if-ne v2, v1, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepare: iso = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " isHwMFNREnabled = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mi/config/Device;->isFrontMFNRAlwaysOn()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/mi/config/Device;->isBackMFNRAlwaysOn()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->supportHHTAlgo()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v9, 0x320

    if-lt v4, v9, :cond_8

    move v4, v0

    goto :goto_1

    :cond_8
    move v4, v8

    :goto_1
    iput-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    goto :goto_3

    :cond_9
    :goto_2
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    :goto_3
    iget-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperMoonMode()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v2, :cond_f

    :cond_a
    invoke-static {}, Lcom/mi/config/Device;->isFrontMFNRAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    iput v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareClearShot(I)V

    goto :goto_6

    :cond_b
    invoke-static {}, Lcom/mi/config/Device;->isBackMFNRAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportHHTAlgo()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareHHT()V

    goto :goto_6

    :cond_e
    iput v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareClearShot(I)V

    goto :goto_6

    :cond_f
    iput v8, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    goto :goto_6

    :cond_10
    :goto_4
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v9, v1, :cond_11

    const/16 v1, 0xc

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    goto :goto_5

    :cond_11
    if-ne v4, v1, :cond_12

    const/16 v1, 0xf

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    goto :goto_5

    :cond_12
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    :goto_5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareSuperNight()V

    :goto_6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isSatFusionShotEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v1, v7, :cond_13

    move v1, v0

    goto :goto_7

    :cond_13
    move v1, v8

    :goto_7
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsSatFusionShotEnabled:Z

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->doAnchorFrameAsThumbnail()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAnchorFrame:Z

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNeedDoAnchorFrame:Z

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v6

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoSR:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v7

    const/4 v0, 0x4

    iget-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAnchorFrame:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    const-string p0, "prepare: algo=%d captureNum=%d doMFNR=%b doSR=%b anchor=%b mUseParallelVtCam=%b"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected startSessionCapture()V
    .locals 11

    const-string v0, "ShotParallelBurst"

    const/16 v1, 0x100

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startSessionCapture mSequenceNum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ge v5, v6, :cond_c

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v6

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v8

    if-ne v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v6, v3}, Lcom/android/camera2/compat/MiCameraCompat;->copyFpcDataFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v6

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v8

    if-eq v6, v8, :cond_2

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_9

    :cond_2
    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v6

    iget-object v8, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-static {v6, v8}, Lcom/android/camera/HybridZoomingSystem;->toCropRegion(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    iget-object v8, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraCapabilities;->isZoomRatioSupported()Z

    move-result v8

    if-eqz v8, :cond_4

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mi/config/DataItemFeature;->supportMtkCropRegion()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v9}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v9

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v10

    if-ne v9, v10, :cond_3

    iget-object v8, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v8

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isZoomRatioSupported, uw/sr set zoomRatio = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v8}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mi/config/DataItemFeature;->supportMtkCropRegion()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v8

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v9

    if-ne v8, v9, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "supportMtkCropRegion: uw/sr set crop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v8, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uw/sr set crop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v9, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v3, v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uw/sr set mtkCrop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyPostProcessCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v8, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_STATISTICS_FACE_RECTANGLES:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v6, v8}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/graphics/Rect;

    if-eqz v6, :cond_7

    const-string v8, "set mtk face"

    invoke-static {v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyFaceRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_7
    const-string v6, "get mtk face = null"

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-static {v3, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyNotificationTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v8, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->POST_PROCESS_CROP_REGION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v6, v8}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    if-eqz v6, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sat set mtkCrop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyPostProcessCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_8
    const-string v6, "sat get mtkCrop = null"

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mi/config/DataItemFeature;->supportAlgoUpExtra4Mmcam()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v3, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyAlgoUpEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_a
    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0, v3, v5, v6}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mi/config/DataItemFeature;->supportAlgoUpExtra4Mmcam()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyAlgoUpEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0, v6, v5, v7}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startSessionCapture request number:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "_"

    if-eqz v3, :cond_d

    :try_start_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v6}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    goto :goto_5

    :cond_d
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v6}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    :goto_5
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {v2, v3}, Lcom/android/camera/MemoryHelper;->addCapturedNumber(II)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    const-string v3, "Failed to captureBurst, IllegalArgument"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_6

    :catch_1
    move-exception v2

    const-string v3, "Failed to captureBurst, IllegalState"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_6

    :catch_2
    move-exception v1

    const-string v2, "Failed to captureBurst, CameraAccessException"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_6
    return-void
.end method
