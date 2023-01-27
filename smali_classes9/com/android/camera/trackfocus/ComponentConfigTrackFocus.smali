.class public Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigTrackFocus.java"


# static fields
.field public static final KEY_TRACK_FOCUS:Ljava/lang/String; = "pref_camera_track_focus_preferred_key"

.field private static final TAG:Ljava/lang/String; = "ComponentConfigTrackFocus"


# instance fields
.field private mIsClosed:Z

.field private mIsMutexEnable:Z

.field private mSupported:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initMutexEnable(IILcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0xa2

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->initMutexEnableForVideoMode(ILcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private initMutexEnableForVideoMode(ILcom/android/camera2/CameraCapabilities;)Z
    .locals 3

    const/16 p0, 0xa2

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isMasterFilterOn(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-static {p2, p0}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-static {p1, p0}, Lcom/android/camera/CameraSettings;->getPreferVideoQuality(II)I

    move-result p0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result p1

    const/4 v0, 0x0

    const/16 v2, 0x3c

    if-ne p1, v2, :cond_6

    move p1, v1

    goto :goto_0

    :cond_6
    move p1, v0

    :goto_0
    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const/16 v2, 0x1e

    :goto_1
    invoke-static {p2, p0, v2}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->isCurrentQualitySupportTrackFocus(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result p0

    if-nez p0, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method private initSupported(ILcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->isSupportTrackFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    return p0

    :cond_1
    const/16 p2, 0xa3

    if-eq p1, p2, :cond_2

    const/16 p2, 0xa2

    if-eq p1, p2, :cond_2

    const/16 p2, 0xa5

    if-eq p1, p2, :cond_2

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return p0
.end method

.method public static isCurrentQualitySupportTrackFocus(Lcom/android/camera2/CameraCapabilities;II)Z
    .locals 3

    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->QUALITY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ComponentConfigTrackFocus"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "isCurrentQualitySupportTrackFocus QUALITY_SUPPORTED is not defined"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->QUALITY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    if-nez p0, :cond_1

    const-string p0, "isCurrentQualitySupportTrackFocus.support is null"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const-string p0, "isCurrentQualitySupportTrackFocus.support.length % 2 != 0"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    move v0, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_4

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    return v2
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigTrackFocus#getDefaultValue() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDisplayTitleString()I
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ComponentConfigTrackFocus#getDisplayTitleString() not supported"

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

    const-string v0, "ComponentConfigTrackFocus#getItems() not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigTrackFocus#getKey() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->mIsClosed:Z

    return p0
.end method

.method public isMutexEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->mIsMutexEnable:Z

    return p0
.end method

.method public isSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->mSupported:Z

    return p0
.end method

.method public isSwitchOn(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ComponentConfigTrackFocus#isSwitchOn() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isTrackFocusOn()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->mSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->mIsMutexEnable:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const-string v0, "pref_camera_track_focus_preferred_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->initSupported(ILcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->mSupported:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->initMutexEnable(IILcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->mIsMutexEnable:Z

    return-void
.end method

.method public setClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->mIsClosed:Z

    return-void
.end method

.method public setTrackFocusOn(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/trackfocus/ComponentConfigTrackFocus;->setClosed(Z)V

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "pref_camera_track_focus_preferred_key"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method
