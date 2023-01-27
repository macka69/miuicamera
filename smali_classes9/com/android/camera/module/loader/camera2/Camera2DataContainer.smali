.class public Lcom/android/camera/module/loader/camera2/Camera2DataContainer;
.super Ljava/lang/Object;
.source "Camera2DataContainer.java"

# interfaces
.implements Lcom/android/camera/module/loader/camera2/Camera2Compat;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final BOGUS_CAMERA_ID_BACK:I = 0x0

.field public static final BOGUS_CAMERA_ID_FRONT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Camera2DataContainer"

.field private static final sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;


# instance fields
.field private mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;-><init>()V

    sput-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mi/config/Device;->isSupportCameraRole()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterCommon;

    invoke-direct {v0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterCommon;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;
    .locals 4

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->init(Landroid/hardware/camera2/CameraManager;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/module/loader/camera2/Camera2DataContainer;
    .locals 2

    sget-object v0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    invoke-virtual {v1, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->init(Landroid/hardware/camera2/CameraManager;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->sInstance:Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getVideoModeCameraId(II)I
    .locals 3

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    const/16 v1, 0xa2

    if-ne p2, v1, :cond_2

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->is8KSupportedByAllPhysicalCamerasInVideoSat()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p0

    return p0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p0

    return p0

    :cond_1
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string p2, "Use main camera when #1"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    return p0

    :cond_2
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne p2, v1, :cond_4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->isSupportUltraTele()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string p2, "Use main camera when 8KOpen and (zoomRatio < UltraTeleMinZoomRatio)"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p0

    return p0

    :cond_4
    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string p2, "Use main camera when 8KOpen"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    return p0

    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraSatEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportVideoSAT()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string p2, "Use main camera when no supportVideoSATForVideoQuality"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result p0

    return p0

    :cond_8
    :goto_0
    sget-object p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string p2, "Use main camera when no supportVideoSAT"

    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method


# virtual methods
.method public declared-synchronized getActualOpenCameraId(II)I
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p2, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v0, "Warning: getActualOpenCameraId(): #init() failed."

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return p1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez p1, :cond_37

    :try_start_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->isForceMainBackCamera()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    if-nez v3, :cond_4

    const/16 v3, 0xa7

    if-eq p2, v3, :cond_4

    monitor-exit p0

    return p1

    :cond_4
    :try_start_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->getCapabilities()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/camera2/CameraCapabilities;->isSupportLightTripartite()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :cond_5
    const/16 v3, 0xa9

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq p2, v3, :cond_26

    const/16 v3, 0xba

    if-eq p2, v3, :cond_1c

    const/16 v3, 0xbc

    if-eq p2, v3, :cond_1c

    const/16 v3, 0xb3

    if-eq p2, v3, :cond_1a

    const/16 v3, 0xb4

    if-eq p2, v3, :cond_15

    const/16 v3, 0xb6

    if-eq p2, v3, :cond_12

    const/16 v3, 0xb7

    if-eq p2, v3, :cond_f

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_e

    const/16 v3, 0xcd

    if-eq p2, v3, :cond_1c

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    goto/16 :goto_3

    :pswitch_0
    :try_start_4
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportPixelModelSwitchCameraId()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraWide()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->isUltraPixelSupportedByUltraTele()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v2

    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Currently user selected zoom ratio is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v3, v2, v4

    if-gez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_6
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto/16 :goto_4

    :pswitch_1
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isSuperNightUWOpen(I)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_8
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_9
    sget-boolean v2, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v2, :cond_3c

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v2

    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Currently user selected zoom ratio is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v3, v2, v4

    if-gez v3, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_a
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isSupportUltraTele()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/device/Common;->isSupportedSuperNightUT()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto/16 :goto_4

    :pswitch_2
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportSlowMotionUsingUW()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :pswitch_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    const-string v4, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideBokehCameraId()I

    move-result v3

    if-eq v3, v2, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideBokehCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v3

    if-eq v3, v2, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_e
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getLocalCameraId()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    sget-object v3, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_4

    :cond_f
    sget-boolean v2, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v2, :cond_3c

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v2

    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Currently user selected zoom ratio is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v3, v2, v4

    if-gez v3, :cond_10

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_10
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isSupportVideoToTele()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_11

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->isSupportVideoQuality(II)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_11
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isSupportVideoToUltraTele()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3c

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->isSupportVideoQuality(II)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isZoomByCameraSwitchingSupported()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wide"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_13
    const-string v3, "Standalone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_14
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_15
    :pswitch_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isZoomByCameraSwitchingSupported()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wide"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_16
    const-string/jumbo v3, "tele"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_17
    const-string/jumbo v3, "ultra"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_18
    const-string v3, "macro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_19
    const-string v3, "Standalone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_1a
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSupportLiveVVModeUltraWide()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_1b
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_1c
    :pswitch_5
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportStandaloneMacroCamera()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_1d
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportTeleMacroCamera()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_1e
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_1f
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto :goto_1

    :cond_20
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraSatEnable()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFakePartSAT()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {}, Lcom/mi/config/Device;->isSupportedOpticalZoom()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto :goto_1

    :cond_21
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v2

    goto :goto_1

    :cond_22
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto :goto_1

    :cond_23
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFakePartSAT()Z

    move-result v3

    if-eqz v3, :cond_3d

    :cond_24
    sget-boolean v3, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v3, :cond_3d

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v3

    sget-object v5, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Currently user selected zoom ratio is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v3, v3, v4

    if-gez v3, :cond_25

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_25
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFakePartSAT()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_26
    :pswitch_6
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isDualCameraShineVideoBokeh()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoShineForceOn(I)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_27
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportStandaloneMacroCamera()Z

    move-result v2

    if-eqz v2, :cond_28

    sget-boolean v2, Lcom/mi/config/Device;->IS_F4:Z

    if-nez v2, :cond_28

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_28
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportTeleMacroCamera()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_29
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_2a
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_2b
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoModeCameraId(II)I

    move-result v2

    goto/16 :goto_4

    :cond_2c
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isVhdrOn(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v4, "Use main camera when video HDR is on"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2d
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getSuperEISProValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_2e
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getSuperEISProValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    sget-object v2, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v3, "Use main camera when SuperEISProValue is normal"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_2f
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->isSuperEisUseWideCamera()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    goto :goto_2

    :cond_30
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    :goto_2
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v4, "Use main camera when SuperEisUseWideCamera"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_31
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_32
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->is4K120FpsOn(I)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetRetainZoom()V

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v4, "Use main camera when 4K120Fps on"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_33
    sget-boolean v2, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v2, :cond_36

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v2

    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Currently user selected zoom ratio is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v3, v2, v4

    if-gez v3, :cond_34

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v2

    goto/16 :goto_4

    :cond_34
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isSupportVideoToTele()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_35

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(II)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v4, "Use main camera when VideoToTele no supportVideoQuality"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_35
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/DataItemFeature;->isSupportVideoToUltraTele()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_36

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->supportVideoSATForVideoQuality(I)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(II)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v2

    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v4, "Use main camera when VideoToUltraTele no supportVideoQuality"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_36
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoModeCameraId(II)I

    move-result v2

    goto :goto_4

    :cond_37
    if-ne p1, v1, :cond_3c

    const/16 v3, 0xa1

    if-eq p2, v3, :cond_3b

    const/16 v3, 0xa2

    if-eq p2, v3, :cond_3b

    const/16 v3, 0xab

    if-eq p2, v3, :cond_38

    goto :goto_3

    :cond_38
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v3

    if-ne v3, v2, :cond_39

    goto :goto_3

    :cond_39
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v2

    invoke-static {}, Lcom/mi/config/Device;->isGlobalE5()Z

    move-result v3

    if-eqz v3, :cond_3a

    if-eqz v2, :cond_3c

    :cond_3a
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v2

    goto :goto_4

    :cond_3b
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v3

    if-eq v3, v2, :cond_3c

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v2

    goto :goto_4

    :cond_3c
    :goto_3
    move v2, p1

    :cond_3d
    :goto_4
    sget-object v3, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "getActualOpenCameraId: mode=%x, id=%d->%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 p1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, p1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa5
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xab
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized getAuxCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getAuxCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAuxFrontCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getAuxFrontCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getBokehCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehDepthCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getBokehDepthCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBokehFrontCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getBokehFrontCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCapabilities()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/CameraCapabilities;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->getCapabilities()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getCapabilities(I)Lcom/android/camera2/CameraCapabilities;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCapabilitiesByBogusCameraId(II)Lcom/android/camera2/CameraCapabilities;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getActualOpenCameraId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultDualVideoCameraIds()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/camera/dualvideo/util/RenderSourceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "camera.dualvideo.firstid"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "camera.dualvideo.secondid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v0, v1, :cond_0

    if-eq v2, v1, :cond_0

    if-eq v0, v2, :cond_0

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {p0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getDefaultDualVideoCameraIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getFrontCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getFrontCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMainBackCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getMainBackCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxJpegSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->getMaxJpegSize()I

    move-result p0

    return p0
.end method

.method public getParallelVirtualCameraId()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {p0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getParallelVirtualCameraId()I

    move-result p0

    return p0
.end method

.method public declared-synchronized getRoleIdByActualId(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getRoleIdByActualId(I)I

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

.method public declared-synchronized getSATCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getSATCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSATFrontCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getSATFrontCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandaloneMacroCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getStandaloneMacroCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraTeleCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getUltraTeleCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraWideBokehCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getUltraWideBokehCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUltraWideCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getUltraWideCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoSATCameraId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getVideoSATCameraId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVirtualBackCameraId()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {p0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getVirtualBackCameraId()I

    move-result p0

    return p0
.end method

.method public getVirtualFrontCameraId()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {p0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->getVirtualFrontCameraId()I

    move-result p0

    return p0
.end method

.method public declared-synchronized hasBokehCamera()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->hasBokehCamera()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasPortraitCamera()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {p0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->hasPortraitCamera()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized hasSATCamera()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->hasSATCamera()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasTeleCamera()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {p0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->hasTeleCamera()Z

    move-result p0

    return p0
.end method

.method public init(Landroid/hardware/camera2/CameraManager;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->init(Landroid/hardware/camera2/CameraManager;)V

    return-void
.end method

.method public declared-synchronized isFrontCameraId(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    const-string v1, "Warning: isFrontCameraId(): #init() failed."

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getFacing()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {p0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->isInitialized()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized isPartSAT()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->isPartSAT()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mapSatCameraIdToFrameworkCameraId(I)I
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid satMasterCameraId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p0

    :goto_0
    sget-object v2, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "satCameraId: %d -> cameraId: %d"

    invoke-static {v3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-interface {v0}, Lcom/android/camera/module/loader/camera2/Camera2Compat;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCurrentOpenedCameraId(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mCamera2CompatAdapter:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapter;->setCurrentOpenedCameraId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
