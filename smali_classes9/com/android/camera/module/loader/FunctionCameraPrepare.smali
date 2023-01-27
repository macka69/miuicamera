.class public Lcom/android/camera/module/loader/FunctionCameraPrepare;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionCameraPrepare.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base<",
        "Lcom/android/camera/Camera;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FunctionCameraPrepare"


# instance fields
.field private baseModule:Lcom/android/camera/module/BaseModule;

.field private mLastMode:I

.field private mNeedReConfigureData:Z

.field private mResetType:I


# direct methods
.method public constructor <init>(IIIZLcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    iput p2, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mLastMode:I

    iput p3, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    iput-boolean p4, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mNeedReConfigureData:Z

    iput-object p5, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    return-void
.end method

.method private needKeepFlashForDualVideo()Z
    .locals 4

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1ad

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;->getRecorderManager(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v2, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mLastMode:I

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    if-ne p0, v3, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private reConfigFlash(Lcom/android/camera/data/data/config/DataItemConfig;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->needKeepFlashForDualVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object p1

    iget v1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mLastMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isValidFlashValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_1
    iget v3, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_5

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "5"

    if-nez v4, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    iget v2, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget v1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mLastMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    iget p0, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mLastMode:I

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_5
    return-void
.end method

.method private reconfigureData()V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mNeedReConfigureData:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string v1, "pref_camera_zoom_key"

    invoke-interface {v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getLastCameraId()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v7

    iget v8, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-ne v8, v9, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v8

    iget v9, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v8, v9}, Lcom/mi/config/DataItemFeature;->isSupportFrontZoom(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v10

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reconfigureData needResetForFrontZoom:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " lastCameraId:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " mResetType:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "FunctionCameraPrepare"

    invoke-static {v12, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x4

    if-eq v4, v10, :cond_2

    iget v13, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    const/4 v14, 0x3

    if-eq v13, v14, :cond_2

    if-eq v13, v9, :cond_2

    if-eqz v8, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    :cond_3
    const-string v8, "pref_camera_exposure_key"

    invoke-interface {v5, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-direct {v0, v3, v5}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->reConfigFlash(Lcom/android/camera/data/data/config/DataItemConfig;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v8

    const-string v13, "pref_custom_watermark"

    invoke-virtual {v1, v13, v8}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6, v13}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_4
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v8

    iget v13, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v14, 0xa3

    const/16 v15, 0xab

    const/16 v10, 0xa5

    const/16 v11, 0xa7

    if-eq v13, v14, :cond_5

    if-eq v13, v10, :cond_5

    if-eq v13, v11, :cond_5

    const/16 v14, 0xad

    if-eq v13, v14, :cond_5

    const/16 v14, 0xaf

    if-eq v13, v14, :cond_5

    if-ne v13, v15, :cond_9

    :cond_5
    invoke-virtual {v8}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getFullSupportRatioValues()[Ljava/lang/String;

    move-result-object v13

    iget v14, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v8, v14}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v8

    array-length v14, v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_7

    aget-object v9, v13, v15

    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x4

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_9

    iget v9, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    if-eq v9, v10, :cond_8

    const-string v9, "1x1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    const-string v8, "reconfigureData: clear DATA_CONFIG_RATIO"

    invoke-static {v12, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "pref_camera_picturesize_key"

    invoke-interface {v5, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_9
    iget v8, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    if-ne v8, v11, :cond_c

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f11067a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pref_qc_camera_iso_key"

    invoke-virtual {v3, v9, v8}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mi/config/DataItemFeature;->supportProVideo()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mi/config/DataItemFeature;->supportNewManualParameter()Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_3

    :cond_a
    const v10, 0x7f030027

    goto :goto_4

    :cond_b
    :goto_3
    const v10, 0x7f030028

    :goto_4
    invoke-static {v8, v10}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-interface {v5, v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_c
    invoke-static {}, Lcom/mi/config/Device;->isSupportedManualFunction()Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "pref_focus_position_key"

    invoke-interface {v5, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v8, "pref_qc_camera_exposuretime_key"

    invoke-interface {v5, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_d
    const/4 v8, 0x1

    const-string v8, "pref_camera_facedetection_key"

    invoke-interface {v6, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v8

    const-string v9, "pref_camera_portrait_with_facebeauty_key"

    invoke-interface {v8, v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v8

    const-string v9, "pref_camera_facedetection_auto_hidden_key"

    invoke-interface {v8, v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v8

    const-string v9, "pref_camera_video_show_faceview"

    invoke-interface {v8, v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v8

    const-string v9, "pref_camera_dual_enable_key"

    invoke-interface {v8, v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v8

    const-string v9, "pref_camera_dual_sat_enable_key"

    invoke-interface {v8, v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v8

    const-string v9, "pref_camera_mfnr_sat_enable_key"

    invoke-interface {v8, v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v8

    const-string v9, "pref_camera_sr_enable_key"

    invoke-interface {v8, v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v8

    const-string v9, "pref_video_capture_repeating"

    invoke-interface {v8, v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string v8, "pref_camera_antibanding_key"

    const-string v9, "1"

    invoke-virtual {v1, v8, v9}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/camera/Util;->isValidValue(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-interface {v6, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_e
    invoke-static {}, Lcom/mi/config/Device;->isBackFingerSensor()Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "pref_fingerprint_capture_key"

    invoke-interface {v6, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_f
    iget v8, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_10

    const/4 v9, 0x2

    if-ne v8, v9, :cond_11

    :cond_10
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mi/config/DataItemFeature;->isSupportPixelModelSwitchCameraId()Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "pref_camera_pixel_lens"

    invoke-interface {v5, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_11
    iget v8, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    packed-switch v8, :pswitch_data_0

    :goto_5
    const/4 v8, 0x0

    goto/16 :goto_8

    :pswitch_0
    iget v2, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const/16 v3, 0xa1

    if-eq v2, v3, :cond_16

    const/16 v3, 0xa2

    if-eq v2, v3, :cond_15

    const/16 v3, 0xa6

    if-eq v2, v3, :cond_14

    if-eq v2, v11, :cond_14

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_13

    const/16 v3, 0xab

    if-eq v2, v3, :cond_12

    const/16 v3, 0xae

    if-eq v2, v3, :cond_16

    const/16 v3, 0xb7

    if-eq v2, v3, :cond_16

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    goto :goto_6

    :cond_12
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportedFrontPortrait()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    goto :goto_6

    :cond_13
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    goto :goto_6

    :cond_14
    const/4 v2, 0x0

    goto :goto_6

    :cond_15
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    goto :goto_6

    :cond_16
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    :goto_6
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraIdTransient(I)V

    goto :goto_5

    :pswitch_1
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->reInit()V

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v8

    invoke-direct {v0, v8, v5}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetFlash(Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v8

    invoke-direct {v0, v8, v5}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetHdr(Lcom/android/camera/data/data/config/ComponentConfigHdr;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v8

    invoke-direct {v0, v8, v5}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetBeautyTransientAndVideoPersist(Lcom/android/camera/data/data/config/ComponentConfigBeauty;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object v8

    invoke-direct {v0, v8, v5}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetUltraWide(Lcom/android/camera/data/data/config/ComponentConfigUltraWide;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigUltraWide()Lcom/android/camera/data/data/config/ComponentConfigUltraWide;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyDualLens()Lcom/android/camera/data/data/config/ComponentManuallyDualLens;

    move-result-object v9

    invoke-direct {v0, v8, v9, v5}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetLensType(Lcom/android/camera/data/data/config/ComponentConfigUltraWide;Lcom/android/camera/data/data/config/ComponentManuallyDualLens;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetAIWatermark(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Z)V

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v8

    invoke-direct {v0, v8, v9}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetColorEnhance(Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;Z)V

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v8

    iget v9, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v8, v9}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getKey(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetVideoQualityPartially(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;)V

    const-string v3, "key_config_gif"

    invoke-interface {v6, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-direct {v0, v5}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetFastmotionPro(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->clearArrayMap()V

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v3

    if-nez v3, :cond_17

    invoke-direct {v0, v5}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetBeautyBackLevel(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-direct {v0, v5}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetBeautyCaptureFigure(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v3

    const/4 v8, 0x1

    invoke-interface {v3, v8}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(I)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/config/DataItemConfig;

    const/4 v8, 0x0

    goto :goto_7

    :cond_17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v3

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(I)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/config/DataItemConfig;

    :goto_7
    invoke-virtual {v3}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v10

    invoke-direct {v0, v10, v9}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetFlash(Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v10

    invoke-direct {v0, v10, v9}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetHdr(Lcom/android/camera/data/data/config/ComponentConfigHdr;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v10

    invoke-direct {v0, v10, v9}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetFrontBokenh(Lcom/android/camera/data/data/config/ComponentConfigBokeh;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v10

    invoke-direct {v0, v10, v9}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetBeautyTransientAndVideoPersist(Lcom/android/camera/data/data/config/ComponentConfigBeauty;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetVideoQualityPartially(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;)V

    invoke-direct {v0, v3}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetBeautyVideoFront(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    invoke-interface {v9}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/extra/DataItemLive;->clearAll()V

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->resetSubtitle(Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportLiveMode()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportMiLiveMode()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    const-string v2, "pref_live_music_path_key"

    invoke-interface {v7, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_live_music_hint_key"

    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_live_sticker_key"

    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_live_sticker_name_key"

    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_live_sticker_hint_key"

    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_live_speed_key"

    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "key_live_filter"

    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "key_live_shrink_face_ratio"

    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "key_live_enlarge_eye_ratio"

    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "key_live_smooth_strength"

    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v2

    const-string v3, "pref_live_beauty_status"

    invoke-interface {v2, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_19
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportProVideo()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "pref_camera_pro_video_log_format"

    invoke-interface {v6, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_8

    :pswitch_2
    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object v2

    iget v3, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->checkValueValid(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    iget v3, v0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :cond_1a
    :goto_8
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportLensDirtyDetected()Z

    move-result v2

    iget v0, v0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->mResetType:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1b

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    if-ne v4, v0, :cond_1b

    move v11, v8

    goto :goto_9

    :cond_1b
    move v11, v2

    :goto_9
    if-eqz v11, :cond_1c

    const-string v0, "pref_lens_dirty_detect_enabled_key"

    const/4 v1, 0x1

    invoke-interface {v5, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_1c
    invoke-interface {v5}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-interface {v6}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-interface {v7}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetAIWatermark(Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->resetAIWatermark(Z)V

    :cond_0
    return-void
.end method

.method private resetBeautyBackLevel(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 4

    sget-object p0, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_LEVEL:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForCapture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {v2}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForVideo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {v2}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForPortrait(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    invoke-static {v2}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForFun(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetBeautyCaptureFigure(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 3

    sget-object p0, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_BACK_FIGURE:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForCapture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetBeautyTransientAndVideoPersist(Lcom/android/camera/data/data/config/ComponentConfigBeauty;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->clearClosed()V

    const/16 p0, 0xa2

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    return-void
.end method

.method private resetBeautyVideoFront(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 3

    sget-object p0, Lcom/android/camera/constant/BeautyConstant;->BEAUTY_CATEGORY_LEVEL:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/camera/constant/BeautyConstant;->wrappedSettingKeyForVideo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetColorEnhance(Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->reset(Z)V

    :cond_0
    return-void
.end method

.method private resetFastmotionPro(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 0

    const-string p0, "pref_qc_fastmotion_pro_camera_iso_key"

    invoke-interface {p1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string p1, "pref_qc_camera_fastmotion_pro_exposure_value_key"

    invoke-interface {p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string p1, "pref_qc_camera_fastmotion_pro_exposuretime_key"

    invoke-interface {p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string p1, "pref_fastmotion_pro_focus_position_key"

    invoke-interface {p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string p1, "pref_camera_fastmotion_pro_whitebalance_key"

    invoke-interface {p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string p1, "pref_qc_fastmotion_pro_manual_whitebalance_k_value_key"

    invoke-interface {p0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method private resetFlash(Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetToDefault(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    return-void
.end method

.method private resetFrontBokenh(Lcom/android/camera/data/data/config/ComponentConfigBokeh;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 1

    iget p2, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const-string p2, "off"

    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private resetHdr(Lcom/android/camera/data/data/config/ComponentConfigHdr;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 1

    iget p2, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getPersistValue(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "normal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    const-string p2, "auto"

    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setComponentValue(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private resetLensType(Lcom/android/camera/data/data/config/ComponentConfigUltraWide;Lcom/android/camera/data/data/config/ComponentManuallyDualLens;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->resetLensType(Lcom/android/camera/data/data/config/ComponentConfigUltraWide;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    :cond_0
    return-void
.end method

.method private resetSubtitle(Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->clearArrayMap()V

    return-void
.end method

.method private resetUltraWide(Lcom/android/camera/data/data/config/ComponentConfigUltraWide;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->resetUltraWide(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    :cond_0
    return-void
.end method

.method private resetVideoQualityPartially(Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->reset()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 2
    .param p1    # Lcom/android/camera/module/loader/NullHolder;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/Camera;",
            ">;)",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p0, 0xea

    invoke-static {v1, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, 0xe5

    invoke-static {v1, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "FunctionCameraPrepare"

    const-string p1, "activity is finishing, the content of BaseModuleHolder is set to null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xeb

    invoke-static {v1, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/Camera;->changeRequestOrientation()V

    iget-object p1, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    const/16 p1, 0xe1

    invoke-static {p0, p1}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->reconfigureData()V

    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionCameraPrepare;->baseModule:Lcom/android/camera/module/BaseModule;

    invoke-static {p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionCameraPrepare;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method
