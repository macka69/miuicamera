.class public Lcom/android/camera/trackfocus/TrackFocusRequestTag;
.super Ljava/lang/Object;
.source "TrackFocusRequestTag.java"


# static fields
.field private static final CANCEL_TOUCH_TRACK_AF:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SCALER_CROP_REGION:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RequestVendorTag"

.field private static final TRACK_FOCUS_ENABLED:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TRACK_FOCUS_REGISTER_ROI:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusRequestTag$SJM01zsx9W85Sa1ALlu-RTH3E1s;->INSTANCE:Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusRequestTag$SJM01zsx9W85Sa1ALlu-RTH3E1s;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->TRACK_FOCUS_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v0, Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusRequestTag$u9gYLesjcEbuGyIlq8s5uTV3Pvs;->INSTANCE:Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusRequestTag$u9gYLesjcEbuGyIlq8s5uTV3Pvs;

    const-class v1, Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->TRACK_FOCUS_REGISTER_ROI:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v0, Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusRequestTag$xhFh1Dxa9sMuc4l3QY6pCC0QdfA;->INSTANCE:Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusRequestTag$xhFh1Dxa9sMuc4l3QY6pCC0QdfA;

    const-class v1, Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->SCALER_CROP_REGION:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v0, Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusRequestTag$wlt-GittjXzf8kVzIDOQJakGbW0;->INSTANCE:Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusRequestTag$wlt-GittjXzf8kVzIDOQJakGbW0;

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->CANCEL_TOUCH_TRACK_AF:Lcom/android/camera2/vendortag/VendorTag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyCancelTouchTackAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    const-string v0, "RequestVendorTag"

    const-string v1, "applyCancelTouchTackAF"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->CANCEL_TOUCH_TRACK_AF:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    return-void
.end method

.method public static applyCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyCropRegion: rect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestVendorTag"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->SCALER_CROP_REGION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    return-void
.end method

.method public static applyTrackFocusArea(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyTrackFocusArea: rect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestVendorTag"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->TRACK_FOCUS_REGISTER_ROI:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    return-void
.end method

.method public static applyTrackFocusEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyTrackFocusEnable: value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestVendorTag"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->TRACK_FOCUS_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingConfig.Enable"

    return-object v0
.end method

.method static synthetic lambda$static$1()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingConfig.RegisterROI"

    return-object v0
.end method

.method static synthetic lambda$static$2()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingConfig.cropRegion"

    return-object v0
.end method

.method static synthetic lambda$static$3()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingConfig.CancelTouchTrackAF"

    return-object v0
.end method
