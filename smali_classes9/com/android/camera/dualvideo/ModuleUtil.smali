.class public Lcom/android/camera/dualvideo/ModuleUtil;
.super Ljava/lang/Object;
.source "ModuleUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTopTipRes()I
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getRecordType()Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/ModuleUtil$1;->$SwitchMap$com$android$camera$dualvideo$recorder$RecordType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const v0, 0x7f110324

    return v0

    :cond_0
    const v0, 0x7f110326

    return v0
.end method

.method public static getUIStyle()I
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v2

    div-int/2addr v0, v2

    int-to-float v0, v0

    const v2, 0x3fd6c16c

    const/high16 v3, 0x40200000    # 2.5f

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isFatScreen()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3fd6c16c

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
