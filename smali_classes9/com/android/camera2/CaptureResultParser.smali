.class public Lcom/android/camera2/CaptureResultParser;
.super Ljava/lang/Object;
.source "CaptureResultParser.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final AECGAIN_THRESHOLD:F = 2.0f

.field private static final DEBUG_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "CaptureResultParser"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/camera2/CaptureResultParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera2/CaptureResultParser;->DEBUG_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAECFrameControl(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/AECFrameControl;
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AEC_FRAME_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;

    return-object p0
.end method

.method public static getAFFrameControl(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/AFFrameControl;
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AF_FRAME_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;

    return-object p0
.end method

.method public static getAWBFrameControl(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/AWBFrameControl;
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AWB_FRAME_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/vendortag/struct/AWBFrameControl;

    return-object p0
.end method

.method public static getAecLux(Landroid/hardware/camera2/CaptureResult;)F
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AEC_LUX:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public static getAsdDetectedModes(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AI_SCENE_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getAwbCct(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string v0, "getAwbCct, capture result is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->USE_CUSTOM_WB:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static getBeautyBodySlimCountResult(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->BEAUTY_BODY_SLIM_COUNT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getCaptureExpTime(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/CaptureExpTimes;
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_SE_CAPTURE_TIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->parseCaptureExpTimes(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDxoAsdScene(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;
    .locals 1

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->DXO_ASD_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDxoAsdScene, tag not define:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->DXO_ASD_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    invoke-direct {p0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;-><init>()V

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->DXO_ASD_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    if-nez p0, :cond_2

    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "getDxoAsdScene, scene is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    invoke-direct {p0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;-><init>()V

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "getDxoAsdScene, capture result is null, or capability is null."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;

    invoke-direct {p0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene$ASDScene;-><init>()V

    return-object p0
.end method

.method public static getExifValues(Landroid/hardware/camera2/CaptureResult;)[B
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->EXIF_INFO_VALUES:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static getFallbackRoleId(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_FALLBACKROLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_FALLBACKROLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public static getFastZoomResult(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->FAST_ZOOM_RESULT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    sget-object v0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAST_ZOOM_RESULT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getHHTFrameNumber(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HHT_FRAMENUMBER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "getHHTFrameNumber, tag not define"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HHT_FRAMENUMBER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_0
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "getHHTFrameNumber, capture result is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getHdrCaptureRequestSettings(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_CAPTURE_REQUEST_SETTINGS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static getHdrCheckerAdrc(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_CHECKER_ADRC:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getHdrCheckerSceneType(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_CHECKER_SCENETYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getHdrCheckerValues(Landroid/hardware/camera2/CaptureResult;)[B
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_CHECKER_EV_VALUES:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static getHdrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AI_HDR_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getHdrMode(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getHdrSrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AI_HDRSR_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getHistogramStats(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HISTOGRAM_STATS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static getLaserDist(Landroid/hardware/camera2/CaptureResult;)[B
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string v0, "getLaserDist, capture result is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->LASER_DIST:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static getMiAiTof(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Byte;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string v0, "getLaserDist, capture result is null"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_AI_TOF:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0
.end method

.method public static getMiMotionSKipVelocity(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/MiMotionVelocity;
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_MOTION_SKIP_VELOCITY:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;

    return-object p0
.end method

.method public static getMiMotionVelocity(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/MiMotionVelocity;
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_MOTION_VELOCITY:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity;

    return-object p0
.end method

.method public static getRealBV(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->REAL_BV:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getSatDbgInfo(Landroid/hardware/camera2/CaptureResult;)[B
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_DBG_INFO:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static getSatMasterCameraId(Landroid/hardware/camera2/CaptureResult;)I
    .locals 7

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSatMasterPhysicalCameraIdSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_MASTER_PHYSICAL_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getRoleIdByActualId(I)I

    move-result p0

    sget-boolean v3, Lcom/android/camera2/CaptureResultParser;->DEBUG_ENABLED:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v0, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    const-string v6, "getSatMasterPhysicalCameraId: %d -> role(%d)"

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x15

    if-ne p0, v0, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    if-ne p0, v0, :cond_3

    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/16 v0, 0x17

    if-ne p0, v0, :cond_6

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_MATER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    sget-boolean p0, Lcom/android/camera2/CaptureResultParser;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSatMasterCameraId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_0
    if-nez v2, :cond_7

    sget-boolean p0, Lcom/android/camera2/CaptureResultParser;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_8

    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string v0, "getSatMasterCameraId: not found, default to WIDE"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    move-object v1, v2

    :cond_8
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getSuperNightCheckerEv(Landroid/hardware/camera2/CaptureResult;)[B
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_CHECKER_EV:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static getSuperNightInfo(Landroid/hardware/camera2/CaptureResult;Z)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif;->getSuperNightExif(Landroid/hardware/camera2/CaptureResult;Z)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object p0

    return-object p0
.end method

.method public static getUltraWideDetectedResult(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ULTRA_WIDE_RECOMMENDED_RESULT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getZoomMapROI(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ZOOM_MAP_ROI:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "getZoomMapRIO, tag not define"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;-><init>(IIII)V

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ZOOM_MAP_ROI:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;-><init>(IIII)V

    :goto_0
    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "getZoomMapRIO, capture result is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect$ChiRect;-><init>(IIII)V

    return-object p0
.end method

.method public static isASDEnable(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 4

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AI_SCENE_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isASDEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static isAishutExistMotion(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/Device;->IS_J10:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AISHUT_EXIST_MOTION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MTK_3A_FEATURE_AISHUT_CAPTURE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    aget p0, p0, v1

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public static isDepthFocus(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_DEPTH_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_DEPTH_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    move v0, p1

    :cond_3
    return v0
.end method

.method public static isFakeSatEnable(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->FAKE_SAT_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static isHHTDisabled(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HHT_DISABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "isHHTDisabled, tag not define"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HHT_DISABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_0
    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string p1, "isHHTDisabled, capture result is null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isHdrMotionDetected(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_MOTION_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHistogramStatsEnabled(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HISTOGRAM_STATS_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HISTOGRAM_STATS_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    const/4 p1, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, p1, :cond_2

    move v0, p1

    :cond_2
    :goto_0
    return v0
.end method

.method public static isLLSNeeded(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_LLS_NEEDED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLensDirtyDetected(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 2

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->LENS_DIRTY_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static isNightAlgoDisabledByHAL(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->THERMAL_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->THERMAL_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    sget-object p1, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNightAlgoDisabledByHAL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_1

    move v0, p1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isNightCaptureDisabled(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_CAPTURE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_CAPTURE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    sget-object p1, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNightCaptureDisabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isP2doneReady(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 2

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->P2_KEY_NOTIFICATION_RESULT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    aget p0, p0, v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static isQuadCfaRunning(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportQuadCfa()Z

    move-result v0

    sget-object v1, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isQuadCfaRunning: support="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AEC_FRAME_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getAecExposureDatas()[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getAecExposureDatas()[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/AECFrameControl;->getAecExposureDatas()[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;->getLinearGain()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x40400000    # 3.0f

    :goto_0
    sget-object v0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isQuadCfaRunning: gain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isRemosaicDetected(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->REMOSAIC_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    sget-object v0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRemosaicDetected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSREnable(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 1
    .param p0    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->IS_SR_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSatFallbackDetected(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_FALLBACK_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static isSpecshotDetected(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 3

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->CONTROL_ENABLE_SPECSHOT_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    sget-object v0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSpecshotDetected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static isZslHdrEnabled(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera2/CaptureResultParser;->TAG:Ljava/lang/String;

    const-string v1, "isZslHdrEnabled, capture result is null"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ASD_IS_ZSL_HDR:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method
