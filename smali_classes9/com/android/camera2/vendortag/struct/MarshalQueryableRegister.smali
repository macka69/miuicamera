.class public Lcom/android/camera2/vendortag/struct/MarshalQueryableRegister;
.super Ljava/lang/Object;
.source "MarshalQueryableRegister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static preload()V
    .locals 1

    new-instance v0, Lcom/android/camera2/vendortag/struct/AWBFrameControl$MarshalQueryableAWBFrameControl;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/AWBFrameControl$MarshalQueryableAWBFrameControl;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/SlowMotionVideoConfiguration$MarshalQueryableSlowMotionVideoConfiguration;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/AFFrameControl$MarshalQueryableAFFrameControl;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/AFFrameControl$MarshalQueryableAFFrameControl;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData$SatFusionCalibrationInfoMarshalQueryable;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData$SatFusionCalibrationInfoMarshalQueryable;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableChiRect;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableDxoAsdScene;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/MiMotionVelocity$MiMotionVelocityMarshalQueryable;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/MiMotionVelocity$MiMotionVelocityMarshalQueryable;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$FakeSatStreamConfigurationMarshalQueryable;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/FakeSatStreamConfiguration$FakeSatStreamConfigurationMarshalQueryable;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    new-instance v0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    return-void
.end method
