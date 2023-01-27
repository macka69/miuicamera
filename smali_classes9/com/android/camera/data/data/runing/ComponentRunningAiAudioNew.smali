.class public Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningAiAudioNew.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComponentRunningAiAudioNew"

.field public static final VALUE_OFF:Ljava/lang/String; = "OFF"

.field public static final VALUE_ON:Ljava/lang/String; = "ON"


# instance fields
.field private mAudioZoomMax:D

.field private mAudioZoomMin:D

.field private mFocusWidthMax:D

.field private mFocusWidthMin:D

.field private mIsNormalIntent:Z

.field private mRecType:I

.field private mScene:I

.field private mShot:I

.field private mWndns:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mAudioZoomMin:D

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mAudioZoomMax:D

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mFocusWidthMax:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mFocusWidthMin:D

    return-void
.end method


# virtual methods
.method public clearArrayMap()V
    .locals 2

    const/16 v0, 0xa2

    const-string v1, "OFF"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    const/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public getCurrentParameters(IZI)V
    .locals 5

    if-eqz p2, :cond_a

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mShot:I

    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mScene:I

    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mRecType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mWndns:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    iput v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mShot:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAiAudioSingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mRecType:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mShot:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mRecType:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->is3DAudioOn()Z

    move-result v1

    if-eqz v1, :cond_2

    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mRecType:I

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mRecType:I

    :cond_3
    :goto_0
    if-eqz p3, :cond_7

    const/16 v1, 0x5a

    if-eq p3, v1, :cond_6

    const/16 v1, 0xb4

    if-eq p3, v1, :cond_5

    const/16 v1, 0x10e

    if-eq p3, v1, :cond_4

    goto :goto_1

    :cond_4
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mScene:I

    goto :goto_1

    :cond_5
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mScene:I

    goto :goto_1

    :cond_6
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mScene:I

    goto :goto_1

    :cond_7
    const/4 p3, 0x4

    iput p3, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mScene:I

    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result p3

    if-eqz p3, :cond_8

    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mWndns:I

    :cond_8
    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroLensOn(I)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mRecType:I

    iput v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mWndns:I

    :cond_a
    return-void
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "OFF"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFocusGain(DD)D
    .locals 4

    sget-object v0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFocusGain.level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "  maxZoomValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mAudioZoomMin:D

    iget-wide v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mAudioZoomMax:D

    sub-double/2addr v2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    invoke-static {p3, p4}, Ljava/lang/Math;->log10(D)D

    move-result-wide p2

    div-double/2addr p0, p2

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getFocusSectorWidth(DD)D
    .locals 5

    iget-wide v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mFocusWidthMax:D

    iget-wide v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mFocusWidthMin:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mAudioZoomMax:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    cmpl-double v2, p3, v2

    const-wide/high16 v3, 0x4028000000000000L    # 12.0

    if-nez v2, :cond_0

    move-wide p3, v3

    :cond_0
    cmpl-double v2, p1, v3

    if-lez v2, :cond_1

    move-wide p1, v3

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getFocusGain(DD)D

    move-result-wide p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p1, v2

    if-nez p1, :cond_2

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    const-wide/high16 p3, 0x4008000000000000L    # 3.0

    :cond_3
    iget-wide p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mFocusWidthMax:D

    mul-double/2addr v0, p3

    sub-double/2addr p0, v0

    sget-object p2, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFocusSectorWidth.focusGain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, "  focusSectorWidth = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_ai_audio_new"

    return-object p0
.end method

.method public getRecType()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mRecType:I

    return p0
.end method

.method public getResText()I
    .locals 0

    const p0, 0x7f1106e5

    return p0
.end method

.method public getScene()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mScene:I

    return p0
.end method

.method public getShot()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mShot:I

    return p0
.end method

.method public getWindns()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mWndns:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwitchOn(I)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xa2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mIsNormalIntent:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ON"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public reInit(IZ)V
    .locals 0

    iput-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->mIsNormalIntent:Z

    return-void
.end method

.method public setEnabled(IZ)V
    .locals 1

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "ON"

    goto :goto_0

    :cond_1
    const-string p2, "OFF"

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
