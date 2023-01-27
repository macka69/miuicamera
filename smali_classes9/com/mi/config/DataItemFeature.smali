.class public Lcom/mi/config/DataItemFeature;
.super Ljava/lang/Object;
.source "DataItemFeature.java"

# interfaces
.implements Lcom/mi/config/FeatureConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/config/DataItemFeature$Singleton;
    }
.end annotation


# static fields
.field private static final BUILD_REGION:Ljava/lang/String;

.field private static final DEBUG_CLONE:Z

.field private static final DEBUG_EXTERNALFRAMEPROCESSOR_FOR_POWER_TEST:Z

.field private static final DEBUG_PANO_UI_LAYOUT:Z = false

.field private static final DEBUG_SALIENCY_CHECKER:Z

.field private static final PARALLEL_PERFORMANCE_SETTING:I = 0x0

.field private static final PARALLEL_QUALITY_SETTING:I = 0x1

.field private static final PARALLEL_QUEUE_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DataItemFeature"


# instance fields
.field private mConfig:Lcom/mi/device/Common;

.field private mHwc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "camera.feature.clone"

    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/mi/config/DataItemFeature;->DEBUG_CLONE:Z

    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "camera.feature.saliencychecker"

    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/mi/config/DataItemFeature;->DEBUG_SALIENCY_CHECKER:Z

    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "camera.ExternalFrameProcessor.power.test"

    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/mi/config/DataItemFeature;->DEBUG_EXTERNALFRAMEPROCESSOR_FOR_POWER_TEST:Z

    const-string v0, "ro.miui.build.region"

    const-string v1, "cn"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/config/DataItemFeature;->BUILD_REGION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lconfig/Feature;->getConfig(Ljava/lang/String;)Lcom/mi/device/Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    sget-object v0, Lcom/mi/config/DataItemFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/config/DataItemFeature$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/config/DataItemFeature;-><init>()V

    return-void
.end method

.method public static getDeviceSuffix()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.boot.camera.config"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "_pro"

    return-object v0
.end method

.method private getSupportedButtonOuterZooms()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSupportedButtonOuterZooms()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSupportedZoom()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSupportedZoom()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUltraPixelIndexFromString(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getUltraPixelSizeFromString(Ljava/lang/String;)Landroid/util/Size;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, " "

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVLogMenuPosition()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getVLogMenuPosition()I

    move-result p0

    return p0
.end method

.method public static instance()Lcom/mi/config/DataItemFeature;
    .locals 1

    sget-object v0, Lcom/mi/config/DataItemFeature$Singleton;->INSTANCE:Lcom/mi/config/DataItemFeature;

    return-object v0
.end method

.method private isCNBuild()Z
    .locals 1

    sget-object p0, Lcom/mi/config/DataItemFeature;->BUILD_REGION:Ljava/lang/String;

    const-string v0, "cn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isINBuild()Z
    .locals 1

    sget-object p0, Lcom/mi/config/DataItemFeature;->BUILD_REGION:Ljava/lang/String;

    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSupportUltraPixelRaw(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getUltraPixelPhotographyRearSize()Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/camera2/CameraCapabilities;->isUltraPixelRawPhotographySupported(Landroid/util/Size;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$isSupportDualVideo$0(Lcom/android/camera2/CameraCapabilities;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMtkPipDevicesSupported()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private parseZooms(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/mi/config/DataItemFeature;->getSupportedButtonOuterZooms()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mi/config/DataItemFeature;->getSupportedZoom()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p3

    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    return-object p3
.end method

.method private supportAlgoUpQ()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportAlgoUpQ()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public afterSalesEnabled()Z
    .locals 5

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.miui.maintenancemode"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lcom/mi/config/DataItemFeature;->TAG:Ljava/lang/String;

    const-string v1, "get packageManager of maintenance mode error"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    sget-object p0, Lcom/mi/config/DataItemFeature;->TAG:Ljava/lang/String;

    const-string v1, "could not get packageManager of maintenance mode"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long p0, v1, v3

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public allowCapturingHeicImage()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->allowCapturingHeicImage()Z

    move-result p0

    return p0
.end method

.method public defaultAntiBanding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->defaultAntiBanding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public defaultDeviceWaterMark()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->defaultDeviceWaterMark()Z

    move-result p0

    return p0
.end method

.method public defaultLensDirtyTip()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->defaultLensDirtyTip()Z

    move-result p0

    return p0
.end method

.method public defaultVideoQuality()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->defaultVideoQuality()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public disableCAFDuringHighSpeedRecording()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->disableCAFDuringHighSpeedRecording()Z

    move-result p0

    return p0
.end method

.method public disableCloseFlashForThermalDetected()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->disableCloseFlashForThermalDetected()Z

    move-result p0

    return p0
.end method

.method public enableMultiframeInManualMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->enableMultiframeInManualMode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public enableOutputRawInManualModule()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->enableOutputRawInManualModule()Z

    move-result p0

    return p0
.end method

.method public enablePreviewPortraitLighting()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->enablePreviewPortraitLighting()Z

    move-result p0

    return p0
.end method

.method public enableXiaomiAmbilight()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->enableXiaomiAmbilight()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public forceFrontSuperNightShotQuick()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->forceFrontSuperNightShotQuick()Z

    move-result p0

    return p0
.end method

.method public forceUseRemosaicSizeForFront(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->forceUseRemosaicSizeForFront()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public get4kCameraBoostThreshold()J
    .locals 2

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->get4kCameraBoostThreshold()J

    move-result-wide v0

    return-wide v0
.end method

.method public get8kCameraBoostThreshold()J
    .locals 2

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->get8kCameraBoostThreshold()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAecLuxHeightLight()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getAecLuxHeightLight()I

    move-result p0

    return p0
.end method

.method public getAecLuxLastLight()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getAecLuxLastLight()I

    move-result p0

    return p0
.end method

.method public getAiEnableDefault()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getAiEnableDefault()Z

    move-result p0

    return p0
.end method

.method public getAiEnhancedVideoQualities()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getAiEnhancedVideoQualities()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAlgoPortraitBackLogicMaxWidth()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getAlgoPortraitBackLogicMaxWidth()I

    move-result p0

    return p0
.end method

.method public getAlgoPortraitBackPhysicMaxWidth()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getAlgoPortraitBackPhysicMaxWidth()I

    move-result p0

    return p0
.end method

.method public getAmbilightLimitSize()Landroid/util/Size;
    .locals 3

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->enableXiaomiAmbilight()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object p0, p0, v1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/util/Size;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v2, p0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAudioMapDefaultValue()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getAudioMapDefaultValue()Z

    move-result p0

    return p0
.end method

.method public getBackDefaultFNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getBackDefaultFNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 5

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3604b150    # -2058710.0f

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x8ecf5f2

    if-eq v1, v2, :cond_1

    const v2, 0x32afd5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "lime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "camellia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_2
    const-string v1, "secret"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isIndiaDevice()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/camera/Util;->isInternationalBuild()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "gl"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->getDeviceSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCloneMaxSize()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getCloneMaxSize()I

    move-result p0

    return p0
.end method

.method public getConfig()Lcom/mi/device/Common;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    return-object p0
.end method

.method public getCropFrontZoomRatio()F
    .locals 2

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getCropFrontZoomRatio()F

    move-result p0

    invoke-static {}, Lcom/android/camera/Util;->getDumpCropFrontZoomRatio()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getDumpCropFrontZoomRatio()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getDumpCropFrontZoomRatio()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :cond_0
    return p0
.end method

.method public getCustomWatermarkVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getCustomWatermarkVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultEvChecker()[I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getDefaultEvChecker()[I

    move-result-object p0

    return-object p0
.end method

.method public getDefaultFNumber(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getFrontDefaultFNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getBackDefaultFNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultFavoriteModes()[I
    .locals 4

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getDefaultFavoriteModes()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    sget-object p0, Lcom/mi/config/DataItemFeature;->TAG:Ljava/lang/String;

    const-string v0, "get default favorite modes fails."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getDefaultRatio(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "4x3"

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getDefaultRatio()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultShutterSoundType()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getDefaultShutterSoundType()I

    move-result p0

    return p0
.end method

.method public getDepthMapVersion()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getDepthMapVersion()I

    move-result p0

    return p0
.end method

.method public getDualVideoCameraSelectConfig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getDualVideoCameraSelectConfig()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureMimojiModleVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getFeatureMimojiModleVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFixedShot2ShotTime()I
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_J11_PRO:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getFixedShot2ShotTime()I

    move-result p0

    return p0
.end method

.method public getFrontDefaultEvChecker()[I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getFrontDefaultEvChecker()[I

    move-result-object p0

    return-object p0
.end method

.method public getFrontDefaultFNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getFrontDefaultFNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrontMaxFPS()S
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getFrontMaxFPS()S

    move-result p0

    return p0
.end method

.method public getFrontUltraPixelPhotography()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getFrontUltraPixelPhotography()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrontUltraPixelPhotographyIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getFrontUltraPixelPhotography()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/config/DataItemFeature;->getUltraPixelIndexFromString(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getHDMxaRemoteBufferSize()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getHDMaxRemoteBufferSize()I

    move-result p0

    return p0
.end method

.method public getHDR10VideoEncodingProfile()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getHDR10VideoEncodingProfile()I

    move-result p0

    return p0
.end method

.method public getHDRDefaultValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getHDRDefaultValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHighAccuracyTolerance()F
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getHighAccuracyTolerance()F

    move-result p0

    return p0
.end method

.method public getLowMemoryDeviceParallelRequestRestrictNum()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getLowMemoryDeviceParallelRequestRestrictNum()I

    move-result p0

    return p0
.end method

.method public getManualUltraTeleSizeMaxWidth()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getManualUltraTeleSizeMaxWidth()I

    move-result p0

    return p0
.end method

.method public getMaxRemoteBufferSize()I
    .locals 1

    invoke-static {}, Lcom/mi/config/Device;->isGlobalE5()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/config/Device;->isProF4()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getMaxRemoteBufferSize()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0xf

    return p0
.end method

.method public getMaxVideoPreviewSize()[I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getMaxVideoPreviewSize()[I

    move-result-object p0

    return-object p0
.end method

.method public getMaxVideoSATZoom()F
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getMaxVideoSATZoom()F

    move-result p0

    return p0
.end method

.method public getMfnrFrameNum()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getMfnrFrameNum()I

    move-result p0

    return p0
.end method

.method public getMiLiveModeSupportQuality()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getMiLiveModeSupportQuality()I

    move-result p0

    return p0
.end method

.method public getMiServiceNotificationLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getMiServiceNotificationLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPanoramaCropRatio()F
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getPanoramaCropRatio()F

    move-result p0

    return p0
.end method

.method public getPanoramaGoalAngle()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getPanoramaGoalAngle()I

    move-result p0

    return p0
.end method

.method public getPanoramaGoalAngleVertical()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getPanoramaGoalAngleVertical()I

    move-result p0

    return p0
.end method

.method public getPanoramaMaxSize()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getPanoramaMaxSize()I

    move-result p0

    return p0
.end method

.method public getParallelPara()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getParallelPara()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    return-object v0

    :cond_0
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v6, p0

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, p0, v7

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    sget-wide v9, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    aget-object v11, v8, v1

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    aget-object p0, v8, v3

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v6, "!"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v6, p0, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object p0, p0, v3

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getParallelRequestRestrictNum()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getParallelRequestRestrictNum()I

    move-result p0

    return p0
.end method

.method public getQuickShotThresholdShotCacheCount()I
    .locals 4

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getQuickShotThresholdShotCacheCount6G()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0
.end method

.method public getRawSuperNightImpl()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getRawSuperNightImpl()I

    move-result p0

    return p0
.end method

.method public getRearMaxFPS()S
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getRearMaxFPS()S

    move-result p0

    return p0
.end method

.method public getRearTeleUltraPixelImageSize()Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->getRearTeleUltraPixelResolution()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/config/DataItemFeature;->getUltraPixelSizeFromString(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getRearUltraPixelPhotography()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getRearUltraPixelPhotography()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRearUltraPixelPhotographyIndex()I
    .locals 1

    invoke-static {}, Lcom/mi/config/Device;->isF7ANote()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/mi/config/Device;->isG7A48M()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getRearUltraPixelPhotography()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/config/DataItemFeature;->getUltraPixelIndexFromString(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRearUltraTeleUltraPixelImageSize()Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->getRearUltraTeleUltraPixelResolution()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/config/DataItemFeature;->getUltraPixelSizeFromString(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getRearUltraWideUltraPixelImageSize()Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->getRearUltraWideUltraPixelResolution()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/config/DataItemFeature;->getUltraPixelSizeFromString(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatingDropImageCount()I
    .locals 4

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->getSRFrameNumberFor6G()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getRepeatingDropImageCountFor6G()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getRepeatingDropImageCount()I

    move-result p0

    return p0
.end method

.method public getSRFrameNumber()I
    .locals 4

    invoke-static {}, Lcom/mi/config/Device;->isLowF4()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportAI108M()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRAndMfnrPixelOn()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getSRFrameNumberPerformanceMode()I

    move-result p0

    return p0

    :cond_3
    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSRFrameNumberFor6G()I

    move-result p0

    return p0

    :cond_4
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSRFrameNumber()I

    move-result p0

    return p0
.end method

.method public getSRFrameNumberPerformanceMode()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSRFrameNumberPerformanceMode()I

    move-result p0

    return p0
.end method

.method public getSatZoomRatioX()[F
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSatZoomRatioX()[F

    move-result-object p0

    return-object p0
.end method

.method public getSatZoomRatioY()[F
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSatZoomRatioY()[F

    move-result-object p0

    return-object p0
.end method

.method public getShotBoostMaxShotCount()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getShotBoostMaxShotCount()I

    move-result p0

    return p0
.end method

.method public getShotBoostMinDelayedTime()J
    .locals 2

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getShotBoostMinDelayedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStandaloneMacroSupportedOpticalZoomRatioCombination(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getStandaloneMacroSupportedOpticalZoomRatioCombination()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public getSuperNightEvValues(Z)[I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0, p1}, Lcom/mi/device/Common;->getSuperNightEvValues(Z)[I

    move-result-object p0

    return-object p0
.end method

.method public getSuperNightLimitSize()[[I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSuperNightLimitSize()[[I

    move-result-object p0

    return-object p0
.end method

.method public getSuperNightRawFormat()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSuperNightRawFormat()I

    move-result p0

    return p0
.end method

.method public getSuperNightWideSizeMaxWidth()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSuperNightWideSizeMaxWidth()I

    move-result p0

    return p0
.end method

.method public getSupportDepurpleLens()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSupportDepurpleLens()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedOpticalZoomRatioCombination(I)I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSupportedOpticalZoomRatioCombination()I

    move-result p0

    if-gez p0, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method public getSupportedZoomInnerValues(ZZLjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "capture_inner"

    invoke-direct {p0, v0, v1, p3}, Lcom/mi/config/DataItemFeature;->parseZooms(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_0

    const-string/jumbo p2, "video_inner"

    invoke-direct {p0, v0, p2, p3}, Lcom/mi/config/DataItemFeature;->parseZooms(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSuperMoonZoomRules()[Ljava/lang/String;

    move-result-object p0

    aget-object p3, p0, v0

    :cond_1
    const-string p0, ":"

    invoke-virtual {p3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public getSupportedZoomOuterValues(I)[F
    .locals 5

    invoke-static {}, Lcom/mi/config/Device;->isSupportedOpticalZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.0:2.0"

    goto :goto_0

    :cond_0
    const-string v0, "1.0"

    :goto_0
    const/16 v1, 0xa1

    const/4 v2, 0x0

    const-string v3, "capture"

    const/4 v4, 0x1

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa2

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb7

    if-eq p1, v1, :cond_2

    const/16 v1, 0xbc

    if-eq p1, v1, :cond_1

    const/16 v1, 0xcc

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    :goto_1
    move p1, v2

    goto :goto_2

    :pswitch_0
    const-string v3, "pixel"

    const-string v0, "1:2"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v3, "supernight"

    const-string v0, "0.6:1:2"

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "supermoon"

    const-string v0, "5:60"

    goto :goto_1

    :cond_2
    :pswitch_2
    move p1, v4

    :goto_2
    invoke-direct {p0, v4, v3, v0}, Lcom/mi/config/DataItemFeature;->parseZooms(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    const-string/jumbo p1, "video"

    const-string v1, ""

    invoke-direct {p0, v4, p1, v1}, Lcom/mi/config/DataItemFeature;->parseZooms(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    move-object v0, p0

    :cond_3
    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-object p1

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportedZoomRulerLines(ZZLjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "capture_ruler"

    invoke-direct {p0, v0, v1, p3}, Lcom/mi/config/DataItemFeature;->parseZooms(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_0

    const-string/jumbo p2, "video_ruler"

    invoke-direct {p0, v0, p2, p3}, Lcom/mi/config/DataItemFeature;->parseZooms(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getSuperMoonZoomRules()[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p3, p0, p1

    :cond_1
    const-string p0, ":"

    invoke-virtual {p3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public getTeleRealRatio()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getTeleRealRatio()I

    move-result p0

    return p0
.end method

.method public getUltraPixelPhotographyRearSize()Landroid/util/Size;
    .locals 2

    invoke-static {}, Lcom/mi/config/Device;->isG7A48M()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Landroid/util/Size;

    const/16 v0, 0x1f40

    const/16 v1, 0x1770

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getRearUltraPixelPhotography()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/config/DataItemFeature;->getUltraPixelSizeFromString(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getUltraTeleSizeMaxWidth()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getUltraTeleSizeMaxWidth()I

    move-result p0

    return p0
.end method

.method public getUltraWideSizeMaxWidth()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getUltraWideSizeMaxWidth()I

    move-result p0

    return p0
.end method

.method public getUwToMacroFovRatio()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getUwToMacroFovRatio()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoSatZoomRatioX()[F
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getVideoSatZoomRatioX()[F

    move-result-object p0

    return-object p0
.end method

.method public getVideoSatZoomRatioY()[F
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getVideoSatZoomRatioY()[F

    move-result-object p0

    return-object p0
.end method

.method public getVideoToTeleMaxRatio()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getVideoToTeleMaxRatio()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getWatermarkRegion()I
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportAIWatermark()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mi/config/DataItemFeature;->isCNBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/mi/config/DataItemFeature;->isINBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getWatermarkRegion()I

    move-result p0

    return p0
.end method

.method public getWideSelfieMaxSize()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getWideSelfieMaxSize()I

    move-result p0

    return p0
.end method

.method public getWideSizeMaxWidth()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getWideSizeMaxWidth()I

    move-result p0

    return p0
.end method

.method public hasSiblings()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->hasSiblings()Z

    move-result p0

    return p0
.end method

.method public hideUltraPixelWatermark()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getRearUltraPixelPhotographyIndex()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->hideUltraPixelWatermark()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public is4K30FpsEISSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->is4K30FpsEISSupported()Z

    move-result p0

    return p0
.end method

.method public isAndroidOne()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isAndroidOne()Z

    move-result p0

    return p0
.end method

.method public isApplySrOnPreviewRequest()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isApplySrOnPreviewRequest()Z

    move-result p0

    return p0
.end method

.method public isBigSmallBackPortrait()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isBigSmallBackPortrait()Z

    move-result p0

    return p0
.end method

.method public isBurstShotRequireReprocess()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isBurstShotRequireReprocess()Z

    move-result p0

    return p0
.end method

.method public isCNDevice()Z
    .locals 2

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mHwc:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/config/DataItemFeature;->mHwc:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mHwc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mHwc:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "china_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mHwc:Ljava/lang/String;

    const-string v0, "cn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCaptureIntentAlgoUp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpFeatures()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "CAPTURE_INTENT"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCaptureNeedPreviewSurface()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isCaptureNeedPreviewSurface()Z

    move-result p0

    return p0
.end method

.method public isCinematicPhotoSupported()Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/Device;->IS_F3B:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isCinematicPhotoSupported()Z

    move-result p0

    return p0
.end method

.method public isCreateCaptureSessionWithSessionConfigurationSupported()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isCreateCaptureSessionWithSessionConfigurationSupported()Z

    move-result p0

    return p0
.end method

.method public isDisableAlgoByThermalSupport()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isDisableAlgoByThermalSupport()Z

    move-result p0

    return p0
.end method

.method public isDisableDepurpleInSuperNight()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isDisableDepurpleInSuperNight()Z

    move-result p0

    return p0
.end method

.method public isDisableFlashInManual()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isDisableFlashInManual()Z

    move-result p0

    return p0
.end method

.method public isDualCameraShineVideoBokeh()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isDualCameraShineVideoBokeh()Z

    move-result p0

    return p0
.end method

.method public isEnableAWBLockInPanorama()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isEnableAWBLockInPanorama()Z

    move-result p0

    return p0
.end method

.method public isEnableFrontAELock()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isEnableFrontAELock()Z

    move-result p0

    return p0
.end method

.method public isExternalFrameProcessorPowerTest()Z
    .locals 0

    sget-boolean p0, Lcom/mi/config/DataItemFeature;->DEBUG_EXTERNALFRAMEPROCESSOR_FOR_POWER_TEST:Z

    return p0
.end method

.method public isFastShutterCallbackSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isFastShutterCallbackSupported()Z

    move-result p0

    return p0
.end method

.method public isFoldingPhone()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isFoldingPhone()Z

    move-result p0

    return p0
.end method

.method public isForceCloseCamera()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isForceCloseCamera()Z

    move-result p0

    return p0
.end method

.method public isForceUsingNormalOperationMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isForceUsingNormalOperationMode()Z

    move-result p0

    return p0
.end method

.method public isFrontAlwaysUseUpscale()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isFrontAlwaysUseUpscale()Z

    move-result p0

    return p0
.end method

.method public isFrontCamcorderVFRSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isFrontCamcorderVFRSupported()Z

    move-result p0

    return p0
.end method

.method public isFrontCaptureHDRDefaultAuto()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isFrontCaptureHDRDefaultAuto()Z

    move-result p0

    return p0
.end method

.method public isFrontForceUseMiBokeh()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isFrontForceUseMiBokeh()Z

    move-result p0

    return p0
.end method

.method public isFrontJustBeautyTab()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isFrontJustBeautyTab()Z

    move-result p0

    return p0
.end method

.method public isFrontPopCamera()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isFrontPopCamera()Z

    move-result p0

    return p0
.end method

.method public isFunModuleSupportSoundEffect()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isFunModuleSupportSoundEffect()Z

    move-result p0

    return p0
.end method

.method public isFunSupportEIS()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isFunSupportEIS()Z

    move-result p0

    return p0
.end method

.method public isHALEnableFrontMFNR()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isHALEnableFrontMFNR()Z

    move-result p0

    return p0
.end method

.method public isHighPrioritySuperNightPreferred()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isHighPrioritySuperNightPreferred()Z

    move-result p0

    return p0
.end method

.method public isHighQualityPreferred()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isHighQualityPreferred()Z

    move-result p0

    return p0
.end method

.method public isIndiaDevice()Z
    .locals 3

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mHwc:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/config/DataItemFeature;->mHwc:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mHwc:Ljava/lang/String;

    const-string v1, "india"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-boolean v0, Lcom/mi/config/Device;->IS_K11:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mHwc:Ljava/lang/String;

    const-string v2, "in"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mHwc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mHwc:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "india_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    sget-boolean v0, Lcom/mi/config/Device;->IS_K1:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isIndiaRegion()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public isIndiaRegion()Z
    .locals 1

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isLegacyHAL3Device()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isLegacyHAL3Device()Z

    move-result p0

    return p0
.end method

.method public isLegacyMfnrDevice()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isLegacyMfnrDevice()Z

    move-result p0

    return p0
.end method

.method public isMTKSatSupportRawSuperNightSE()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isMTKSatSupportRawSuperNightSE()Z

    move-result p0

    return p0
.end method

.method public isMacro2SatOptEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isMacro2SatOptEnable()Z

    move-result p0

    return p0
.end method

.method public isMainFemaleSelfieDevice()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isMainFemaleSelfieDevice()Z

    move-result p0

    return p0
.end method

.method public isMctfModeSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isMctfModeSupported()Z

    move-result p0

    return p0
.end method

.method public isMfnrAlogUpQuickShotEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isMfnrAlogUpQuickShotEnabled()Z

    move-result p0

    return p0
.end method

.method public isMiLensSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isMiLensSupported()Z

    move-result p0

    return p0
.end method

.method public isMultiFrameCaptureShutterDelay()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isMultiFrameCaptureShutterDelay()Z

    move-result p0

    return p0
.end method

.method public isNeedFullGyroscope()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isNeedFullGyroscope()Z

    move-result p0

    return p0
.end method

.method public isNeedImproveISOThreshold()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isNeedImproveISOThreshold()Z

    move-result p0

    return p0
.end method

.method public isNeedLimitSize()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isNeedLimitSize()Z

    move-result p0

    return p0
.end method

.method public isNoPixelAlgoUp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpFeatures()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "NO_PIXEL"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPad()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isPad()Z

    move-result p0

    return p0
.end method

.method public isProModuleAlgoUp()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_J2:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mi/config/Device;->IS_STABLE:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpFeatures()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "PRO"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQRCodeAndUltraPixelMutex()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isQRCodeAndUltraPixelMutex()Z

    move-result p0

    return p0
.end method

.method public isQcfaOnlyBinningSize()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isQcfaOnlyBinningSize()Z

    move-result p0

    return p0
.end method

.method public isQuickShotEnabledForFront()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportMfnrAlgoUpQuickShotFeatures()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "FRONT"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQuickShotEnabledForMacro()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportMfnrAlgoUpQuickShotFeatures()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "MACRO"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQuickShotEnabledForTele()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportMfnrAlgoUpQuickShotFeatures()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "TELE"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQuickShotEnabledForUW()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportMfnrAlgoUpQuickShotFeatures()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "ULTRA_WIDE"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isQuickShotEnabledForW()Z
    .locals 2

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportMfnrAlgoUpQuickShotFeatures()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "WIDE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isMfnrAlogUpQuickShotEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRawMutexWithUltraPixel(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->enableOutputRawInManualModule()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mi/config/DataItemFeature;->isSupportUltraPixelRaw(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRemoteOnlineSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isRemoteOnlineSupported()Z

    move-result p0

    return p0
.end method

.method public isRemoveHeicFromStable()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_STABLE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isRemoveHeicFromStable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRethrowException()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isRethrowException()Z

    move-result p0

    return p0
.end method

.method public isSRAndMfnrPixel()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSRAndMfnrPixel()Z

    move-result p0

    return p0
.end method

.method public isSRRequireReprocess()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSRRequireReprocess()Z

    move-result p0

    return p0
.end method

.method public isSatMasterPhysicalCameraIdSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSatMasterPhysicalCameraIdSupported()Z

    move-result p0

    return p0
.end method

.method public isSatSupportSuperNightSE()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSatSupportSuperNightSE()Z

    move-result p0

    return p0
.end method

.method public isScreenSlideSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isScreenSlideSupported()Z

    move-result p0

    return p0
.end method

.method public isSetEarlyRepeating()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSetEarlyRepeating()Z

    move-result p0

    return p0
.end method

.method public isSplitVideoSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSplitVideoSupported()Z

    move-result p0

    return p0
.end method

.method public isStandaloneMacroAlgoUp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpFeatures()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "MACRO"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isStreamingSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isStreamingSupported()Z

    move-result p0

    return p0
.end method

.method public isSuperEisUseWideCamera()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSuperEisUseWideCamera()Z

    move-result p0

    return p0
.end method

.method public isSuperMacro()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSuperMacro()Z

    move-result p0

    return p0
.end method

.method public isSuperNightHidlNeedYuv2AlgoEngine()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSuperNightHidlNeedYuv2AlgoEngine()Z

    move-result p0

    return p0
.end method

.method public isSupport3SATZoomingOptimization()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupport3SATZoomingOptimization()Z

    move-result p0

    return p0
.end method

.method public isSupport4KDurationLimit()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupport4KDurationLimit()Z

    move-result p0

    return p0
.end method

.method public isSupport8KDurationLimit()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupport8KDurationLimit()Z

    move-result p0

    return p0
.end method

.method public isSupportAFSaliencyCheck()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportAFSaliencyCheck()Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/mi/config/DataItemFeature;->DEBUG_SALIENCY_CHECKER:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSupportAbortCaptures()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportAbortCaptures()Z

    move-result p0

    return p0
.end method

.method public isSupportAccessExternalStorageByFile()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportAccessExternalStorageByFile()Z

    move-result p0

    return p0
.end method

.method public isSupportAiAudio()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportAiAudio()Z

    move-result p0

    return p0
.end method

.method public isSupportAiScene()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportAiScene()Z

    move-result p0

    return p0
.end method

.method public isSupportAsd()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportAsd()Z

    move-result p0

    return p0
.end method

.method public isSupportAudioMapMove()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportAudioMapMove()Z

    move-result p0

    return p0
.end method

.method public isSupportAutoHibernation()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportAutoHibernation()Z

    move-result p0

    return p0
.end method

.method public isSupportAutoZoom()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportAutoZoom()Z

    move-result p0

    return p0
.end method

.method public isSupportBeautyBody()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportBeautyBody()Z

    move-result p0

    return p0
.end method

.method public isSupportBeautyInPortrait()Z
    .locals 4

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mi/config/Device;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportBeautyInPortrait4G()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportBeautyInPortrait()Z

    move-result p0

    return p0
.end method

.method public isSupportBeautyInPortrait4G()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportBeautyInPortrait4G()Z

    move-result p0

    return p0
.end method

.method public isSupportBluetoothHeadsetMic()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportBluetoothHeadsetMic()Z

    move-result p0

    return p0
.end method

.method public isSupportBokehAdjust()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportBokehAdjust()Z

    move-result p0

    return p0
.end method

.method public isSupportCloneCopyMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportCloneCopyMode()Z

    move-result p0

    return p0
.end method

.method public isSupportCloneMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportCloneMode()Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/mi/config/DataItemFeature;->DEBUG_CLONE:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSupportCommonKaleidoscope()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportCommonKaleidoscope()Z

    move-result p0

    return p0
.end method

.method public isSupportCropFront()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportCropFront()Z

    move-result p0

    return p0
.end method

.method public isSupportCustomWaterMark()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportCustomWaterMark()Z

    move-result p0

    return p0
.end method

.method public isSupportCustomWaterMarkGen2()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportCustomWaterMarkGen2()Z

    move-result p0

    return p0
.end method

.method public isSupportDeFlicker()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportDeFlicker()Z

    move-result p0

    return p0
.end method

.method public isSupportDepurpleInHdr()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportDepurpleInHdr()Z

    move-result p0

    return p0
.end method

.method public isSupportDeviceWatchDog()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportDeviceWatchDog()Z

    move-result p0

    return p0
.end method

.method public isSupportDocumentMode()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportDocumentMode()Z

    move-result p0

    return p0
.end method

.method public isSupportDocumentMode2()Z
    .locals 3

    invoke-static {}, Lcom/mi/config/Device;->isGlobalF1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportDocumentMode2()Z

    move-result p0

    return p0
.end method

.method public isSupportDollyZoom()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportDollyZoom()Z

    move-result p0

    return p0
.end method

.method public isSupportDualVideo()Z
    .locals 5

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/mi/config/-$$Lambda$DataItemFeature$hG8xzXLjeH16A7Y7lfl9QV75tls;->INSTANCE:Lcom/mi/config/-$$Lambda$DataItemFeature$hG8xzXLjeH16A7Y7lfl9QV75tls;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "miuicamera.dualvideo.show"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportDualVideo()Z

    move-result p0

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    :cond_0
    move v2, v4

    :cond_1
    return v2

    :cond_2
    if-nez v1, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    move v2, v4

    :cond_4
    return v2
.end method

.method public isSupportDualVideoCameraChoose()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getDualVideoCameraSelectConfig()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportDynamicFeature()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportDynamicFeature()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportEffectInPortrait()Z
    .locals 4

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lcom/mi/config/Device;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportEffectInPortrait4G()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportEffectInPortrait()Z

    move-result p0

    return p0
.end method

.method public isSupportEffectInPortrait4G()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportEffectInPortrait4G()Z

    move-result p0

    return p0
.end method

.method public isSupportFastMotionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFastMotionMode()Z

    move-result p0

    return p0
.end method

.method public isSupportFastmotionEnhance()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFastmotionEnhance()Z

    move-result p0

    return p0
.end method

.method public isSupportFastmotionEnhancePro()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFastmotionEnhancePro()Z

    move-result p0

    return p0
.end method

.method public isSupportFastmotionMacro()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFastmotionMacro()Z

    move-result p0

    return p0
.end method

.method public isSupportFeatureLiveVVMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportLiveVVMode()Z

    move-result p0

    return p0
.end method

.method public isSupportFingerSensor()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFingerSensor()Z

    move-result p0

    return p0
.end method

.method public isSupportFlashModeBackSoftLight()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFlashModeBackSoftLight()Z

    move-result p0

    return p0
.end method

.method public isSupportFlush()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFlush()Z

    move-result p0

    return p0
.end method

.method public isSupportFrontBokeh()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFrontBokeh()Z

    move-result p0

    return p0
.end method

.method public isSupportFrontCaptureCrop()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFrontCaptureCrop()Z

    move-result p0

    return p0
.end method

.method public isSupportFrontFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFrontFocus()Z

    move-result p0

    return p0
.end method

.method public isSupportFrontPortraitMFNR()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFrontPortraitMFNR()Z

    move-result p0

    return p0
.end method

.method public isSupportFrontSuperNightBeauty()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFrontSuperNightBeauty()Z

    move-result p0

    return p0
.end method

.method public isSupportFrontTimeLapse()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFrontTimeLapse()Z

    move-result p0

    return p0
.end method

.method public isSupportFrontZoom(I)Z
    .locals 1

    const/16 v0, 0xa3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportFrontZoom()Z

    move-result p0

    return p0
.end method

.method public isSupportHWGyroscope()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportHWGyroscope()Z

    move-result p0

    return p0
.end method

.method public isSupportHandGesture()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportHandGesture()Z

    move-result p0

    return p0
.end method

.method public isSupportIDCardMode()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportIDCardMode()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportIndiaKaleidoscope()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportIndiaKaleidoscope()Z

    move-result p0

    return p0
.end method

.method public isSupportLensDirtyDetected()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportLensDirtyDetected()Z

    move-result p0

    return p0
.end method

.method public isSupportLensDirtyLightUI()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportLensDirtyLightUI()Z

    move-result p0

    return p0
.end method

.method public isSupportLiveMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportLiveMode()Z

    move-result p0

    return p0
.end method

.method public isSupportLiveShot()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportLiveShot()Z

    move-result p0

    return p0
.end method

.method public isSupportLiveVVModeInMenu()Z
    .locals 2

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportFeatureLiveVVMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/config/DataItemFeature;->getVLogMenuPosition()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSupportLiveVVModeInTop()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportFeatureLiveVVMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/config/DataItemFeature;->getVLogMenuPosition()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportLiveVVModeUltraWide()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportLongExposureDelay()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportLongExposureDelay()Z

    move-result p0

    return p0
.end method

.method public isSupportLongPressRecord()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportLongPressRecord()Z

    move-result p0

    return p0
.end method

.method public isSupportMTKPortraitMultiFeatureMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportMTKPortraitMultiFeatureMode()Z

    move-result p0

    return p0
.end method

.method public isSupportMacroMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportMacroMode()Z

    move-result p0

    return p0
.end method

.method public isSupportMacroModeInSlowMotion()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportMacroModeInSlowMotion()Z

    move-result p0

    return p0
.end method

.method public isSupportManualPictureStyle()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportManualPictureStyle()Z

    move-result p0

    return p0
.end method

.method public isSupportMiLiveMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportMiLiveMode()Z

    move-result p0

    return p0
.end method

.method public isSupportMimoji()Z
    .locals 0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportMimojiVersion()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportMoonMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportMoonMode()Z

    move-result p0

    return p0
.end method

.method public isSupportMtkCShotMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportMtkCShotMode()Z

    move-result p0

    return p0
.end method

.method public isSupportMtkPixelZsl()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportMtkPixelZsl()Z

    move-result p0

    return p0
.end method

.method public isSupportMultiHdrSingleMfnr()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportMultiHdrSingleMfnr()Z

    move-result p0

    return p0
.end method

.method public isSupportMultiScreenDevices()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportMultiScreenDevices()Z

    move-result p0

    return p0
.end method

.method public isSupportNormalWideLDC()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportNormalWideLDC()Z

    move-result p0

    return p0
.end method

.method public isSupportNotifyThermal4KRecord()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportNotifyThermal4KRecord()Z

    move-result p0

    return p0
.end method

.method public isSupportOnlyMimojiMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportOnlyMimojiMode()Z

    move-result p0

    return p0
.end method

.method public isSupportOrientation(Ljava/lang/String;)Z
    .locals 6

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportOrientation()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    aget-object v4, v3, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    aget-object p0, v3, p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public isSupportP2doneCshot()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportP2doneCshot()Z

    move-result p0

    return p0
.end method

.method public isSupportPanorama2X()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportPanorama2X()Z

    move-result p0

    return p0
.end method

.method public isSupportPanoramaSwitchOrientation()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportPanoramaSwitchOrientation()Z

    move-result p0

    return p0
.end method

.method public isSupportParalleldream()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportParalleldream()Z

    move-result p0

    return p0
.end method

.method public isSupportPictureFlawCheck()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportPictureFlawCheck()Z

    move-result p0

    return p0
.end method

.method public isSupportPixelModelSwitchCameraId()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportPixelModelSwitchCameraId()Z

    move-result p0

    return p0
.end method

.method public isSupportPixelModelZoom()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportPixelModelZoom()Z

    move-result p0

    return p0
.end method

.method public isSupportPresentationDisplay()Z
    .locals 2

    const-string v0, "presentation_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportPresentationDisplay()Z

    move-result p0

    return p0
.end method

.method public isSupportProfessionalPhotoHistogram()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportProfessionalPhotoHistogram()Z

    move-result p0

    return p0
.end method

.method public isSupportQuadCfa()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportQuadCfa()Z

    move-result p0

    return p0
.end method

.method public isSupportReleaseSensorCache()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportReleaseSensorCache()Z

    move-result p0

    return p0
.end method

.method public isSupportSRInMoonMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportSRInMoonMode()Z

    move-result p0

    return p0
.end method

.method public isSupportShortVideoBeautyBody()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportShortVideoBeautyBody()Z

    move-result p0

    return p0
.end method

.method public isSupportShotBoost()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportShotBoost()Z

    move-result p0

    return p0
.end method

.method public isSupportShowEvAtTouchdown()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportShowEvWhenTouchdown()Z

    move-result p0

    return p0
.end method

.method public isSupportShowOnlyFrontLensRelated()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportShowOnlyFrontLensRelated()Z

    move-result p0

    return p0
.end method

.method public isSupportSlowMotionUsingUW()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportSlowMotionUsingUW()Z

    move-result p0

    return p0
.end method

.method public isSupportSlowMotionVideoEditor()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportSlowMotionVideoEditor()Z

    move-result p0

    return p0
.end method

.method public isSupportSlowShutter()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportSlowShutter()Z

    move-result p0

    return p0
.end method

.method public isSupportSoundSettingPreference()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportSoundSettingPreference()Z

    move-result p0

    return p0
.end method

.method public isSupportSpeechShutter()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportSpeechShutter()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportStartupAlphaMask()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportStartupAlphaMask()Z

    move-result p0

    return p0
.end method

.method public isSupportSubtitle()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/mi/config/Device;->IS_F3B:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportSubtitle()Z

    move-result p0

    return p0
.end method

.method public isSupportSuperEIS()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportSuperEIS()Z

    move-result p0

    return p0
.end method

.method public isSupportSuperEISPro()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportSuperEISPro()Z

    move-result p0

    return p0
.end method

.method public isSupportSuperMoonMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportSuperMoonMode()Z

    move-result p0

    return p0
.end method

.method public isSupportSuperNightIncaptureMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportSuperNightIncaptureMode()Z

    move-result p0

    return p0
.end method

.method public isSupportTimestop()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportTimestop()Z

    move-result p0

    return p0
.end method

.method public isSupportUltraPixelSelfie()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportUltraPixelSelfie()Z

    move-result p0

    return p0
.end method

.method public isSupportUltraTele()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportUltraTele()Z

    move-result p0

    return p0
.end method

.method public isSupportUltraWide()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportUltraWide()Z

    move-result p0

    return p0
.end method

.method public isSupportUltraWide60FPSRecording()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportUltraWide60FPSRecording()Z

    move-result p0

    return p0
.end method

.method public isSupportUltraWideBokeh()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportUltraWideBokeh()Z

    move-result p0

    return p0
.end method

.method public isSupportUltraWideLDC()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportUltraWideLDC()Z

    move-result p0

    return p0
.end method

.method public isSupportVideoSKy()Z
    .locals 2

    const-string v0, "miuicamera.video.sky.on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportVideoSKy()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupportVideoTag()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportVideoTag()Z

    move-result p0

    return p0
.end method

.method public isSupportVideoToTele()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportVideoToTele()Z

    move-result p0

    return p0
.end method

.method public isSupportVideoToUltraTele()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportVideoToUltraTele()Z

    move-result p0

    return p0
.end method

.method public isSupportWideSelfie()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportWideSelfie()Z

    move-result p0

    return p0
.end method

.method public isSupportZslOnHhtCapture()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportZslOnHhtCapture()Z

    move-result p0

    return p0
.end method

.method public isSupportedBackPortrait()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportedBackPortrait()Z

    move-result p0

    return p0
.end method

.method public isSupportedFastZoomIn()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportedFastZoomIn()Z

    move-result p0

    return p0
.end method

.method public isSupportedFrontPortrait()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportedFrontPortrait()Z

    move-result p0

    return p0
.end method

.method public isSupportedPanorama()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/Device;->isF6Lite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportedPanorama()Z

    move-result p0

    return p0
.end method

.method public isSupportedSuperNightScene()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportedSuperNightScene()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportedSuperNightUW()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportedSuperNightUW()Z

    move-result p0

    return p0
.end method

.method public isSupportedVideoFrontMirror()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isSupportedVideoFrontMirror()Z

    move-result p0

    return p0
.end method

.method public isTeleHdrPlusMfnrSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isTeleHdrPlusMfnrSupported()Z

    move-result p0

    return p0
.end method

.method public isThumbnailSharingSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isThumbnailSharingSupported()Z

    move-result p0

    return p0
.end method

.method public isUWSupportSuperNightSE()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isUWSupportSuperNightSE()Z

    move-result p0

    return p0
.end method

.method public isUltraTeleHdrPlusMfnrSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isUltraTeleHdrPlusMfnrSupported()Z

    move-result p0

    return p0
.end method

.method public isUltraWideAlgoUp()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_J2:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mi/config/Device;->IS_STABLE:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpFeatures()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "ULTRA_WIDE"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUnifySlowmotionSession()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isUnifySlowmotionSession()Z

    move-result p0

    return p0
.end method

.method public isUwQualityAllInSAT()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isUwQualityAllInSAT()Z

    move-result p0

    return p0
.end method

.method public isVideoAsdSupported(II)Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0, p1, p2}, Lcom/mi/device/Common;->isVideoAsdSupported(II)Z

    move-result p0

    return p0
.end method

.method public isVideoBackCloseFD()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isVideoBackCloseFD()Z

    move-result p0

    return p0
.end method

.method public isVideoHDRDefaultOn()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isVideoHDRDefaultOn()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isVideoHdrUiPriority()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->isVideoHdrUiPriority()Z

    move-result p0

    return p0
.end method

.method public limitMiLiveVideoBeauty()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->limitMiLiveVideoBeauty()Z

    move-result p0

    return p0
.end method

.method public liveActivationId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->liveActivationId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public liveActivationLicense()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->liveActivationLicense()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public moduleNamePixel()I
    .locals 0
    .annotation build Lcom/mi/device/ConfigConstant$UltraPixel;
    .end annotation

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->moduleNamePixel()I

    move-result p0

    return p0
.end method

.method public needDisableAutoBrightness()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->needDisableAutoBrightness()Z

    move-result p0

    return p0
.end method

.method public needShowKaleidoscope()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isIndiaDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportIndiaKaleidoscope()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportCommonKaleidoscope()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needTriggerAE()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->needTriggerAE()Z

    move-result p0

    return p0
.end method

.method public needWaitAEConverged()Z
    .locals 2

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportWaitAEConverged()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->useLegacyFlashMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onlyShowUltraPixelInProMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportShot2Gallery()Z

    move-result p0

    return p0
.end method

.method public parallelMaxAcquireCount()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->parallelMaxAcquireCount()I

    move-result p0

    return p0
.end method

.method public parallelMaxAcquireCount8G()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->parallelMaxAcquireCount8G()I

    move-result p0

    return p0
.end method

.method public parallelMaxDequeueCount()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->parallelMaxDequeueCount()I

    move-result p0

    return p0
.end method

.method public parallelMaxDequeueCount8G()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->parallelMaxDequeueCount8G()I

    move-result p0

    return p0
.end method

.method public performSingleCaptureForHdrPlusMfnr()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->performSingleCaptureForHdrPlusMfnr()Z

    move-result p0

    return p0
.end method

.method public preferredImageReprocessorType()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->preferredImageReprocessorType()I

    move-result p0

    return p0
.end method

.method public screenLightnessDefaultValue()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->screenLightnessDefaultValue()I

    move-result p0

    return p0
.end method

.method public shouldAlwaysEnableMfnrForAlgoUpFrontSingleBokeh()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->shouldAlwaysEnableMfnrForAlgoUpFrontSingleBokeh()Z

    move-result p0

    return p0
.end method

.method public shouldCheckSatFallbackState()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->shouldCheckSatFallbackState()Z

    move-result p0

    return p0
.end method

.method public showPixelTabIfSupport()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->showPixelTabIfSupport()Z

    move-result p0

    return p0
.end method

.method public support16x10Ratio()Z
    .locals 4

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3fcccccd

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->support16x10Ratio()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public support18_7_5x9Ratio()Z
    .locals 4

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x40055555

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->support18_7_5x9Ratio()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public support19_5x9Ratio()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x400aaaab

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->support19_5x9Ratio()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public support19x9Ratio()Z
    .locals 4

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x40071c72

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->support19x9Ratio()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public support20x9Ratio()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x400e38e4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->support20x9Ratio()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public support8KMovie()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->support8KMovie()Z

    move-result p0

    return p0
.end method

.method public supportAI108M()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->getAiSrSizeIndex()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportAIWatermark()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->supportAIWatermark()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mi/config/DataItemFeature;->isINBuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/config/DataItemFeature;->isCNBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpOnCreation()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportAi30()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportAi30()Z

    move-result p0

    return p0
.end method

.method public supportAlgoUp()Z
    .locals 4

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpExtra4Mmcam()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpOnCreation()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->supportAlgoUp()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpExtra4Mmcam()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xa3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    if-eq p0, v0, :cond_1

    const/16 p0, 0xa5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    if-ne p0, v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_2

    sget-object p0, Lcom/mi/config/DataItemFeature;->TAG:Ljava/lang/String;

    const-string v0, "Algo up enabled for mm-camera"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    sget-object p0, Lcom/mi/config/DataItemFeature;->TAG:Ljava/lang/String;

    const-string v0, "Algo up disabled for mm-camera"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public supportAlgoUpExtra4Mmcam()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportAlgoUpExtra4Mmcam()Z

    move-result p0

    return p0
.end method

.method public supportAlgoUpFeatures()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportAlgoUpFeatures()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public supportAlgoUpOnCreation()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpQ()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportAlgoUp()Z

    move-result p0

    return p0
.end method

.method public supportAppendYUV2Jpeg()Z
    .locals 1

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportAppendYUV2Jpeg()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "close.append.yuv"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public supportBackBokehDepth()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportBackBokehDepth()Z

    move-result p0

    return p0
.end method

.method public supportBackSuperNightAlgoUp()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportBackSuperNightAlgoUp()Z

    move-result p0

    return p0
.end method

.method public supportBackSuperNightHalfAlgoUp()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportBackSuperNightHalfAlgoUp()Z

    move-result p0

    return p0
.end method

.method public supportBeautyMakeup()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportBeautyMakeup()Z

    move-result p0

    return p0
.end method

.method public supportColorEnhance()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->supportColorEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isIndiaDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportCustomWB()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportCustomWB()Z

    move-result p0

    return p0
.end method

.method public supportEyeLight()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportEyeLight()Z

    move-result p0

    return p0
.end method

.method public supportFlashTimeLock()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportFlashTimeLock()Z

    move-result p0

    return p0
.end method

.method public supportFrontAi()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportFrontAi()Z

    move-result p0

    return p0
.end method

.method public supportFrontBokenDepth()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportFrontBokenDepth()Z

    move-result p0

    return p0
.end method

.method public supportFrontCameraWaterMark()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportFrontCameraWaterMark()Z

    move-result p0

    return p0
.end method

.method public supportFrontSuperNight()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportFrontSuperNight()Z

    move-result p0

    return p0
.end method

.method public supportFrontSuperNightAlgoUp()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportFrontSuperNightAlgoUp()Z

    move-result p0

    return p0
.end method

.method public supportGifVideoSegment()Z
    .locals 2

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->supportGifVideoSegment()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->supportMimojiVersion()I

    move-result p0

    if-le p0, v1, :cond_0

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public supportHDRCaptureWaitForAEAWBLock()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportHDRCaptureWaitForAEAWBLock()Z

    move-result p0

    return p0
.end method

.method public supportHDRTriggerLock()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportHDRTriggerLock()Z

    move-result p0

    return p0
.end method

.method public supportHHTAlgo()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportHHTAlgo()Z

    move-result p0

    return p0
.end method

.method public supportHdrBokehBack()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportHdrBokehBack()Z

    move-result p0

    return p0
.end method

.method public supportHdrSuperResolution()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportHdrSuperResolution()Z

    move-result p0

    return p0
.end method

.method public supportHighResolutionOutputSizes()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportHighResolutionOutputSizes()Z

    move-result p0

    return p0
.end method

.method public supportIndiaAi()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->supportIndiaAi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isIndiaDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportIndiaFilter()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->supportIndiaFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isIndiaDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportInprogressZoomEffect()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportInProgressZoomEffect()Z

    move-result p0

    return p0
.end method

.method public supportLowLightBokeh()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportLowLightBokeh()Z

    move-result p0

    return p0
.end method

.method public supportLyingDirectHint()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportLyingDirectHint()Z

    move-result p0

    return p0
.end method

.method public supportMacroZoomSuperResolution()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportMacroZoomSuperResolution()Z

    move-result p0

    return p0
.end method

.method public supportMfnrAlgoUpQuickShotFeatures()Ljava/lang/String;
    .locals 4

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportMfnrAlgoUpQuickShotFeatures6G()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportMfnrAlgoUpQuickShotFeatures()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public supportMfnrInManualMode()Z
    .locals 6

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->enableMultiframeInManualMode()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mfnr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_3

    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p0, 0x1

    aget-object p0, v4, p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public supportMfnrNoTeleInManualMode()Z
    .locals 6

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->enableMultiframeInManualMode()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "notelemfnr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_3

    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p0, 0x1

    aget-object p0, v4, p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public supportMimojiVersion()I
    .locals 4

    sget v0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->SUPPORT_MIMOJI_VERSION_TEST:I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportOnlyMimojiMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportMimojiVersion()I

    move-result p0

    :goto_0
    const/4 v1, 0x3

    const/4 v3, -0x1

    if-le v0, v3, :cond_3

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, p0

    :goto_1
    return v2

    :cond_3
    return p0
.end method

.method public supportMoreFrameCaptureLockAFAE()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportMoreFrameCaptureLockAFAE()Z

    move-result p0

    return p0
.end method

.method public supportMoreModeNewStyle()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportMoreModeNewStyle()Z

    move-result p0

    return p0
.end method

.method public supportMtkCropRegion()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportMtkCropRegion()Z

    move-result p0

    return p0
.end method

.method public supportMtkIspHidl()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportMtkIspHidl()Z

    move-result p0

    return p0
.end method

.method public supportMultiWindow()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportMultiWindow()Z

    move-result p0

    return p0
.end method

.method public supportNewGoogleLens()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportNewGoogleLens()Z

    move-result p0

    return p0
.end method

.method public supportNewManualParameter()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportNewManualParameter()Z

    move-result p0

    return p0
.end method

.method public supportNoDelayZoom()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportNoDelayZoom()Z

    move-result p0

    return p0
.end method

.method public supportOnlyAppWatermark()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportOnlyAppWatermark()Z

    move-result p0

    return p0
.end method

.method public supportParallelPixelVendorWatermark()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportParallelPixelVendorWatermark()Z

    move-result p0

    return p0
.end method

.method public supportParallelVendorWatermark()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportParallelVendorWatermark()Z

    move-result p0

    return p0
.end method

.method public supportPortraitAi()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportPortraitAi()Z

    move-result p0

    return p0
.end method

.method public supportPortraitLightIndiaEffect()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isIndiaDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isIndiaRegion()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportPortraitLightIndiaEffect()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportPortraitLightingBack()Z
    .locals 4

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->disablePortraitLightFor6G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportPortraitLightingBack()Z

    move-result p0

    return p0
.end method

.method public supportPortraitLightingFront()Z
    .locals 4

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->disablePortraitLightFor6G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportPortraitLightingFront()Z

    move-result p0

    return p0
.end method

.method public supportPreviewVideoCover()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportPreviewVideoCover()Z

    move-result p0

    return p0
.end method

.method public supportProMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportProMode()Z

    move-result p0

    return p0
.end method

.method public supportProPhotoSRAlgoUp()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportProPhotoSRAlgoUp()Z

    move-result p0

    return p0
.end method

.method public supportProVideo()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportProVideo()Z

    move-result p0

    return p0
.end method

.method public supportRawDataReprocess()Z
    .locals 4

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportRawDataReprocess()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportRawDomainBasedSuperNight()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportRawDomainBasedSuperNight()Z

    move-result p0

    return p0
.end method

.method public supportRealtimeEffect()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportRealtimeEffect()Z

    move-result p0

    return p0
.end method

.method public supportRecorderBoost()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportRecorderBoost()Z

    move-result p0

    return p0
.end method

.method public supportRecordingZoom()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportRecordingZoom()Z

    move-result p0

    return p0
.end method

.method public supportRequestFlashMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportRequestFlashMode()Z

    move-result p0

    return p0
.end method

.method public supportSATRemosaic()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportSATRemosaic()Z

    move-result p0

    return p0
.end method

.method public supportSRTeleInManualMode()Z
    .locals 6

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->enableMultiframeInManualMode()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "telesr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_3

    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p0, 0x1

    aget-object p0, v4, p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public supportShot2Gallery()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportShot2Gallery()Z

    move-result p0

    return p0
.end method

.method public supportSnapClickHapticFeedback()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportSnapClickHapticFeedback()Z

    move-result p0

    return p0
.end method

.method public supportStabilizerCapture()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportStabilizerCapture()Z

    move-result p0

    return p0
.end method

.method public supportStandaloneMacroCamera()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportStandaloneMacroCamera()Z

    move-result p0

    return p0
.end method

.method public supportStandaloneMacroInManual()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportStandaloneMacroInManual()Z

    move-result p0

    return p0
.end method

.method public supportSuperNightAlgoUpShotQuick()Z
    .locals 4

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportSuperNightAlgoUpShotQuick6G()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportSuperNightAlgoUpShotQuick()Z

    move-result p0

    return p0
.end method

.method public supportSuperNightFrontFlash()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportSuperNightFrontFlash()Z

    move-result p0

    return p0
.end method

.method public supportSuperNightLock3A()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportSuperNightLock3A()Z

    move-result p0

    return p0
.end method

.method public supportSuperNightVideo()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportSuperNightVideo()Z

    move-result p0

    return p0
.end method

.method public supportSwMfnr()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportSwMfnr()Z

    move-result p0

    return p0
.end method

.method public supportTeleMacroCamera()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportTeleMacroCamera()Z

    move-result p0

    return p0
.end method

.method public supportTimerBurst()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportTimerBurst()Z

    move-result p0

    return p0
.end method

.method public supportUltraPixelQCFA()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportUltraPixelQCFA()Z

    move-result p0

    return p0
.end method

.method public supportVendorWatermark()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportVendorWatermark()Z

    move-result p0

    return p0
.end method

.method public supportVideoBokeh()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportVideoBokeh()Z

    move-result p0

    return p0
.end method

.method public supportVideoSAT()Z
    .locals 3

    const-string v0, "miuicamera.sat.video"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/mi/config/DataItemFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sat video debug prop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportVideoSAT()Z

    move-result p0

    return p0
.end method

.method public supportWaitAEConverged()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportWaitAEConverged()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public supportXiaomiAmbilight()Z
    .locals 3

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->enableXiaomiAmbilight()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    move v1, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public supportZoomMfnr()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportZoomMfnr()Z

    move-result p0

    return p0
.end method

.method public supportZslShutter()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->supportZslShutter()Z

    move-result p0

    return p0
.end method

.method public useLegacyFlashMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/DataItemFeature;->mConfig:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->useLegacyFlashMode()Z

    move-result p0

    return p0
.end method

.method public useSlowMotionTab()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getRearMaxFPS()S

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->getFrontMaxFPS()S

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
