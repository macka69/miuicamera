.class public Lcom/android/camera/module/loader/FunctionParseSuperNight;
.super Ljava/lang/Object;
.source "FunctionParseSuperNight.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Landroid/hardware/camera2/CaptureResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final CAPTURE_EXP_TIME_UPDATE_MILLS:I = 0x3e8

.field public static final SUPER_NIGHT:I = 0x3

.field public static final TAG:Ljava/lang/String; = "FunctionParseSuperNight"


# instance fields
.field private mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

.field private mIsSuperNight:Z

.field private mIsSupportSuperNightExif:Z

.field private mPointOfCaptureExpTimeUpdated:J

.field private mSkip:Z

.field private mSuperNightCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$SuperNightCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera2/Camera2Proxy$SuperNightCallback;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setSuperNightOn(Z)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mSuperNightCallback:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mSkip:Z

    iput-boolean p3, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSupportSuperNightExif:Z

    return-void
.end method

.method private updateASDScene(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/Camera2Proxy$SuperNightCallback;Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 6

    iget v0, p3, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    iget p3, p3, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSupportSuperNightExif:Z

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureResultParser;->getSuperNightInfo(Landroid/hardware/camera2/CaptureResult;Z)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object v0

    if-eqz v0, :cond_1

    and-int/lit16 v1, p3, -0x100

    int-to-float v1, v1

    iput v1, v0, Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;->result:F

    :cond_1
    and-int/lit16 v1, p3, -0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    const-string v1, "se"

    invoke-static {v1, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Algo reporting super night se enable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightExif(Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;)V

    iget-boolean v0, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSuperNight:Z

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSuperNight:Z

    invoke-interface {p2, v1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightChanged(Z)V

    shr-int/lit8 p3, p3, 0x8

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/camera/module/loader/FunctionParseSuperNight;->updateCaptureExpTime(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/Camera2Proxy$SuperNightCallback;ZI)V

    :goto_3
    return-void
.end method

.method private updateCaptureExpTime(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/Camera2Proxy$SuperNightCallback;ZI)V
    .locals 8

    invoke-interface {p2}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->isMiviSatSuperNightSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0xa3

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getSatMasterCameraId(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-nez p3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mPointOfCaptureExpTimeUpdated:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move p3, v0

    :cond_2
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_SE_CAPTURE_TIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->parseCaptureExpTimes([B)Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object p1

    if-nez p3, :cond_4

    iget-boolean v2, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSuperNight:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    const/16 v3, 0x3e8

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v2

    if-ge v2, v3, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v2

    if-le v2, v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, p3

    :goto_0
    if-eqz v0, :cond_6

    iput-object p1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p4}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->setNightTriggerMode(I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v1

    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSuperNight:Z

    invoke-interface {p2, p1, v1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->updateSuperNightTip(ZI)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mPointOfCaptureExpTimeUpdated:J

    :cond_6
    return-void

    :cond_7
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    invoke-interface {p2, v1, v1}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->updateSuperNightTip(ZI)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mSuperNightCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mSkip:Z

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-interface {v0}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->isSupportSuperNight()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->NON_SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    if-eqz v1, :cond_4

    array-length v3, v1

    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(NoneSemantics)-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v4}, Lcom/android/camera/module/loader/FunctionParseSuperNight;->updateASDScene(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/Camera2Proxy$SuperNightCallback;Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p1

    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSuperNight:Z

    iget-boolean p0, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSupportSuperNightExif:Z

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureResultParser;->getSuperNightInfo(Landroid/hardware/camera2/CaptureResult;Z)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightExif(Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;)V

    invoke-interface {v0, v2}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightChanged(Z)V

    invoke-interface {v0}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->isMiviSatSuperNightSupported()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {v0, v2, v2}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->updateSuperNightTip(ZI)V

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->NON_SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") asd scene result null!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return-object p1

    :cond_6
    :goto_2
    iput-boolean v2, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSuperNight:Z

    iget-boolean p0, p0, Lcom/android/camera/module/loader/FunctionParseSuperNight;->mIsSupportSuperNightExif:Z

    invoke-static {p1, p0}, Lcom/android/camera2/CaptureResultParser;->getSuperNightInfo(Landroid/hardware/camera2/CaptureResult;Z)Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightExif(Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;)V

    invoke-interface {v0, v2}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->onSuperNightChanged(Z)V

    invoke-interface {v0}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->isMiviSatSuperNightSupported()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-interface {v0, v2, v2}, Lcom/android/camera2/Camera2Proxy$SuperNightCallback;->updateSuperNightTip(ZI)V

    :cond_7
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionParseSuperNight;->apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method
