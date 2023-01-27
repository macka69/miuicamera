.class Lcom/android/camera2/HardwareCapabilities$7;
.super Lcom/android/camera2/HardwareCapabilities$TypedValue;
.source "HardwareCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/HardwareCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;-><init>(Lcom/android/camera2/HardwareCapabilities$1;)V

    return-void
.end method


# virtual methods
.method protected create()Ljava/lang/Boolean;
    .locals 5

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    const-class p0, Landroid/media/MediaRecorder;

    const v2, 0x8004

    invoke-virtual {v1, p0, v2}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithTargetMode(Ljava/lang/Class;I)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/CameraSettings;->get8kProfile()I

    move-result v1

    new-instance v2, Lcom/android/camera/CameraSize;

    const/16 v3, 0x1e00

    const/16 v4, 0x10e0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera2/HardwareCapabilities$7;->create()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
