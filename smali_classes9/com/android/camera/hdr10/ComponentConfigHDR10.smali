.class public Lcom/android/camera/hdr10/ComponentConfigHDR10;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigHDR10.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComponentConfigHDR10"


# instance fields
.field public final PREFERENCES_KEY:Ljava/lang/String;

.field private mIsClosed:Z

.field private mIsFeatureMutexEnable:Z

.field private mIsQualityMutexEnable:Z

.field private mIsSATCameraId:Z

.field private mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

.field private mSupportedArray:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance p1, Landroid/util/SparseBooleanArray;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    if-eqz p2, :cond_0

    const-string p1, "pref_hdr10plus_video_mode_key"

    iput-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->PREFERENCES_KEY:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "pref_hdr10_video_mode_key"

    iput-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->PREFERENCES_KEY:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private isFeatureOn(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupport(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    iget-object p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->PREFERENCES_KEY:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isFeaturesMutex(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private declared-synchronized isSupport(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isTagMutex(IILcom/android/camera2/CameraCapabilities;I)Z
    .locals 3

    const-string v0, "ComponentConfigHDR10"

    const/4 v1, 0x1

    if-nez p3, :cond_0

    const-string p0, "isTagMutex return true, due to Capabilities is null"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object v2, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, p1}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality(II)I

    move-result p0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x1e

    :cond_1
    invoke-static {p3, p4, p0, p1}, Lcom/android/camera/hdr10/HDR10Characteristics;->isCurrentQualitySupportHdr10(Lcom/android/camera2/CameraCapabilities;III)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isVideoHdrModeSupportedByCompatTag(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_3

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->videoHdrModeToString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "isTagMutex %s, current id not support, id %s"

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_3
    return p1
.end method

.method private isVideoHdrModeSupported(ILcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p1}, Lcom/android/camera/hdr10/HDR10Characteristics;->isVideoHdrModeSupported(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isVideoHdrModeSupportedByCompatTag(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isVideoHdrModeSupportedByCompatTag(Lcom/android/camera2/CameraCapabilities;I)Z
    .locals 1

    sget-object p0, Lcom/android/camera/hdr10/HDR10Characteristics;->SUPPORT_VIDEO_HDR10:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ComponentConfigHDR10"

    const-string p1, "isVideoHDR10Supported: false, because tag undefined"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Lcom/android/camera/hdr10/HDR10Characteristics;->SUPPORT_VIDEO_HDR10:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isVideoQualityMutex(I)Z
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality(II)I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "ComponentConfigHDR10"

    const-string v2, "isTagMutex quality %s, is4KHigher %s"

    invoke-static {p0, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method

.method private static videoHdrModeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "unknown"

    goto :goto_0

    :cond_0
    const-string p0, "hdr10+"

    goto :goto_0

    :cond_1
    const-string p0, "hdr10"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public declared-synchronized getAvailableVideoHdrMode()I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isMutexEnable(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigHDR10#getDefaultValue() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDisplayTitleString()I
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigHDR10#getDisplayTitleString() not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigHDR10#getItems() not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigHDR10#getKey() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized getSupportVideoHdrMode()I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isActualOn()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    iget-object v1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->PREFERENCES_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsClosed:Z

    return p0
.end method

.method public isHdr10On()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isFeatureOn(I)Z

    move-result p0

    return p0
.end method

.method public isHdr10PlusOn()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isFeatureOn(I)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized isMutexEnable(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isSATShow()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsSATCameraId:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupportedHdr10()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupportedHdr10Plus()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedHdr10()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupport(I)Z

    move-result p0

    return p0
.end method

.method public isSupportedHdr10Plus()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupport(I)Z

    move-result p0

    return p0
.end method

.method public isSwitchOn(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigHDR10#isSwitchOn() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 8

    const-string v0, "ComponentConfigHDR10"

    const-string v1, "reInit E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsSATCameraId:Z

    const/16 v1, 0xa2

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z

    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isVideoHdrModeSupported(ILcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isVideoHdrModeSupported(ILcom/android/camera2/CameraCapabilities;)Z

    move-result v5

    if-nez p2, :cond_2

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v6

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result v7

    if-ne v6, v7, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    iput-boolean v6, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsSATCameraId:Z

    if-eqz v6, :cond_2

    move-object p3, v1

    :cond_2
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isTagMutex(IILcom/android/camera2/CameraCapabilities;I)Z

    move-result v1

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isTagMutex(IILcom/android/camera2/CameraCapabilities;I)Z

    move-result p2

    invoke-direct {p0, p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isFeaturesMutex(I)Z

    move-result p3

    invoke-direct {p0, p1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isVideoQualityMutex(I)Z

    move-result p1

    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v6, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z

    iput-boolean v0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z

    iput-boolean p3, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsFeatureMutexEnable:Z

    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsQualityMutexEnable:Z

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3
    if-eqz v5, :cond_4

    iget-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v4, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array p1, v4, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mSupportedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    iget-object p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsTagMutexEnableArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "ComponentConfigHDR10"

    const-string p2, "reInit X, isVideoHdrModeSupported mSupportedArray %s mIsTagMutexEnableArray %s"

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->mIsClosed:Z

    return-void
.end method

.method public setSwitchOn(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->setClosed(Z)V

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/hdr10/ComponentConfigHDR10;->PREFERENCES_KEY:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method
