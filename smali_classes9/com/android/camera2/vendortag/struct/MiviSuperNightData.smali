.class public Lcom/android/camera2/vendortag/struct/MiviSuperNightData;
.super Ljava/lang/Object;
.source "MiviSuperNightData.java"


# static fields
.field private static final SUPER_NIGHT_TRIGGER_MODE_OWL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MiviSuperNightData"


# instance fields
.field private mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

.field private mCurMasterCameraId:I

.field private mCurMode:I

.field private mFeatureMask:I

.field private mIsFront:Z

.field private mLlsNeeded:Z

.field private mNightCaptureInProgress:Z

.field private mSuperNightEvValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

.field private mTriggerMode:I


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CaptureResult;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mIsFront:Z

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->isLLSNeeded(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mLlsNeeded:Z

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getSatMasterCameraId(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMasterCameraId:I

    iput p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mFeatureMask:I

    iput p3, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMode:I

    const/16 p2, 0xad

    if-eq p3, p2, :cond_0

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->parseCaptureExpTimes(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getNightTriggerMode()I

    move-result p2

    iput p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mTriggerMode:I

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_ELLC_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mTriggerMode:I

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    const-string p3, "MiviSuperNightData"

    if-nez p2, :cond_2

    const-string p2, "MiviSuperNightData : Capture Exp Times is null !"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getSuperNightCheckerEv(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object p1

    const-string p2, "camera.debug.superlowlight"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_3

    const-string v0, "MiviSuperNightData : halSuperNightValues is null !"

    invoke-static {p3, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean p3, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mIsFront:Z

    invoke-static {p1, p2, p3}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->parseSuperNightEvValue([BLjava/lang/String;Z)Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mSuperNightEvValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    return-void
.end method

.method public static parseResult(Landroid/hardware/camera2/CaptureResult;II)Lcom/android/camera2/vendortag/struct/MiviSuperNightData;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;-><init>(Landroid/hardware/camera2/CaptureResult;II)V

    return-object v0
.end method


# virtual methods
.method public getCaptureExpTime()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result p0

    return p0
.end method

.method public getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    return-object p0
.end method

.method public getNightCaptureAnimDuration()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSuperNightEvValue()Lcom/android/camera2/vendortag/struct/SuperNightEvValue;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mSuperNightEvValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    return-object p0
.end method

.method public isMiviBokehSuperNightSupported()Z
    .locals 0

    iget p0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mFeatureMask:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMiviNightCaptureInProgress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mNightCaptureInProgress:Z

    return p0
.end method

.method public isMiviNightModeSupported()Z
    .locals 0

    iget p0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mFeatureMask:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMiviNightSeSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMiviSatSuperNightSupported()Z
    .locals 1

    iget p0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mFeatureMask:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNightCaptureAnimEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviSatSuperNightSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 p0, 0x190

    :goto_0
    if-le v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isNightPreviewAnimEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviSatSuperNightSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviSatSuperNightSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x3e8

    goto :goto_0

    :cond_1
    const/16 p0, 0x190

    :goto_0
    if-le v0, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isSuperNightOwlDetected()Z
    .locals 1

    iget p0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mTriggerMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setNightCaptureInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mNightCaptureInProgress:Z

    return-void
.end method
