.class public Lcom/android/camera2/compat/MiCameraCompat;
.super Ljava/lang/Object;
.source "MiCameraCompat.java"


# static fields
.field private static final IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/mi/config/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera2/compat/MiCameraCompatQcomImpl;

    invoke-direct {v0}, Lcom/android/camera2/compat/MiCameraCompatQcomImpl;-><init>()V

    sput-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mi/config/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera2/compat/MiCameraCompatMtkImpl;

    invoke-direct {v0}, Lcom/android/camera2/compat/MiCameraCompatMtkImpl;-><init>()V

    sput-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-direct {v0}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;-><init>()V

    sput-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyASDScene(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyASDScene(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyAiAIIEPreviewEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAiAIIEPreviewEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAiMoonEffectEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAiMoonEffectEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAiPortraitDeblur(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAiPortraitDeblur(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAiScenePeriod(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAiScenePeriod(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyAiShutterEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAiShutterEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAiShutterExistMotion(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAiShutterExistMotion(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAlgoUpEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAlgoUpEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAmbilightAeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAmbilightAeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyAmbilightMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAmbilightMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyAnchorTimeStamp(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Long;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAnchorTimeStamp(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Long;)V

    return-void
.end method

.method public static applyAppModule(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAppModule(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyAsdDirtyEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAsdDirtyEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyAutoZoomMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAutoZoomMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyAutoZoomScaleOffset(Landroid/hardware/camera2/CaptureRequest$Builder;F)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyAutoZoomScaleOffset(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    return-void
.end method

.method public static applyBackSoftLight(Landroid/hardware/camera2/CaptureRequest$Builder;B)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyBackSoftLight(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyBackwardCaptureHint(Landroid/hardware/camera2/CaptureRequest$Builder;B)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyBackwardCaptureHint(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyBeautyParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashSet;Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/fragment/beauty/BeautyValues;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyBeautyParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashSet;Lcom/android/camera/fragment/beauty/BeautyValues;)V

    return-void
.end method

.method public static applyBurstFps(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyBurstFps(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyBurstHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyBurstHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyCShotFeatureCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyCShotFeatureCapture(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyCameraAi30Enable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyCameraAi30Enable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyCinematicPhoto(Landroid/hardware/camera2/CaptureRequest$Builder;B)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyCinematicPhoto(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;B)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyColorEnhanceEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyColorEnhanceEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyCropFeature(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyCropFeature(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    return-void
.end method

.method public static applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyCustomWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyCustomWaterMark(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyCustomWaterMark(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static applyDepurpleEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyDepurpleEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyDualBokehEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyDualBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;J)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;J)V

    return-void
.end method

.method public static applyExtendedMaxZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyExtendedMaxZoom(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyEyeLight(Landroid/hardware/camera2/CaptureRequest$Builder;II)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyEyeLight(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    return-void
.end method

.method public static applyFNumber(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyFNumber(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static applyFaceAgeAnalyzeEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyFaceAnalyzeAge(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyFaceRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/graphics/Rect;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyFaceRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/graphics/Rect;)V

    return-void
.end method

.method public static applyFaceScoreEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyFaceScore(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyFaceWaterMark(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyFaceWaterMark(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static applyFeatureMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyFeatureMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyFlashCurrent(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyFlashCurrent(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyFlawDetectEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyFlawDetectEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyForceDisableLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyForceDisableLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyFrameRatio(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyFrameRatio(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHDR10Video(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHDRVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyHDRCheckerEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHDRCheckerEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHDRCheckerStatus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHDRCheckerStatus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyHFRDeflicker(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHFRDeflicker(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHdrBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHdrBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static applyHighFpsVideoRecordingMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHighFpsVideoRecordingMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHighQualityPreferred(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHighQualityPreferred(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHighQualityReprocess(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHighQualityReprocess(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyHistogramStats(Landroid/hardware/camera2/CaptureRequest$Builder;B)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyHistogramStats(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyISO(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyISO(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyIsHfrPreview(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyIsHfrPreview(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyIspFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyIspFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyIspFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyIspFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyIspMetaEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyIspMetaEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyIspMetaType(Landroid/hardware/camera2/CaptureRequest$Builder;B)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyIspMetaType(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyIspPackedRawEnable(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyIspPackedRawEnable(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyIspPackedRawSupport(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyIspPackedRawSupport(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyIspTuningIndex(Landroid/hardware/camera2/CaptureRequest$Builder;J)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyIspTuningIndex(Landroid/hardware/camera2/CaptureRequest$Builder;J)V

    return-void
.end method

.method public static applyLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyLensDirtyDetect(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyLensDirtyDetect(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyMakeups(Landroid/hardware/camera2/CaptureRequest$Builder;II)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyMakeups(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    return-void
.end method

.method public static applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyMfnrFrameNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyMfnrFrameNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyMiviSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyMiviSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyMtkProcessRaw(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyMtkProcessRaw(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyNoiseReduction(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyNoiseReduction(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyNormalWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyNormalWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyNotificationTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyNotificationTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyOnTripodModeStatus(Landroid/hardware/camera2/CaptureRequest$Builder;[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyOnTripodModeStatus(Landroid/hardware/camera2/CaptureRequest$Builder;[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    return-void
.end method

.method public static applyPanoramaP2SEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyPanoramaP2SEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyParallelImageName(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyParallelImageName(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static applyParallelMasterCameraId(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyParallelMasterCameraId(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyParallelProcessEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyParallelProcessEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyParallelProcessPath(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyParallelProcessPath(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static applyParallelSnapshot(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyParallelSnapshot(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyPortraitLighting(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyPortraitLighting(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyPostProcessCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyPostProcessCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static applyPqFeature(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyPqFeature(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyRawReprocessHint(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyRawReprocessHint(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyRemosaicEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyRemosaicEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyRemosaicHint(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyRemosaicHint(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySATUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySATUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySatFallback(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySatFallback(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySatFallbackDisable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySatFallbackDisable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySatIsZooming(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySatIsZooming(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyScreenLightHint(Landroid/hardware/camera2/CaptureRequest$Builder;B)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyScreenLightHint(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applySingleBokehEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySkinColor(Landroid/hardware/camera2/CaptureRequest$Builder;II)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySkinColor(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    return-void
.end method

.method public static applySlowMotionVideoRecordingMode(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySlowMotionVideoRecordingMode(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    return-void
.end method

.method public static applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySnapshotTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySnapshotTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySpecshotMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySpecshotMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyStFastZoomIn(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyStFastZoomIn(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySuperNightRawEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySuperNightRawEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySuperNightScene(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySuperNightScene(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applySwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyTargetZoom(Landroid/hardware/camera2/CaptureRequest$Builder;F)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyTargetZoom(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    return-void
.end method

.method public static applyThermalLevel(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyThermalLevel(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyTimeWaterMark(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyTimeWaterMark(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static applyTofLaserDist(Landroid/hardware/camera2/CaptureRequest$Builder;F)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyTofLaserDist(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    return-void
.end method

.method public static applyTuningMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyTuningMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyUltraPixelPortrait(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyUltraPixelPortrait(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyVideoBokehBackLevel(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyVideoBokehBackLevel(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyVideoBokehColorRetentionMode(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyVideoBokehColorRetentionMode(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    return-void
.end method

.method public static applyVideoBokehFrontLevel(Landroid/hardware/camera2/CaptureRequest$Builder;F)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyVideoBokehFrontLevel(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    return-void
.end method

.method public static applyVideoFilterColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyVideoFilterColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyVideoFilterColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyVideoFilterColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyVideoFilterId(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyVideoFilterId(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public static applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    return-void
.end method

.method public static applyVideoLogEnable(Landroid/hardware/camera2/CaptureRequest$Builder;B)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyVideoLogEnable(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void
.end method

.method public static applyVideoStreamState(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyVideoStreamState(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyWaterMarkAppliedList(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyWaterMarkAppliedList(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static applyZsd(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyZsd(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static applyZslHdrEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->applyZslHdrEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public static copyAiSceneFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->copyAiSceneFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public static copyFpcDataFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->copyFpcDataFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public static getDefaultSteamConfigurationsTag()Lcom/android/camera2/vendortag/VendorTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/android/camera2/compat/MiCameraCompat;->IMPL:Lcom/android/camera2/compat/MiCameraCompatBaseImpl;

    invoke-virtual {v0}, Lcom/android/camera2/compat/MiCameraCompatBaseImpl;->getDefaultSteamConfigurationsTag()Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    return-object v0
.end method
