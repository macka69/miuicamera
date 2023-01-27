.class public Lcom/android/camera/trackfocus/TrackFocusResultTag;
.super Ljava/lang/Object;
.source "TrackFocusResultTag.java"


# static fields
.field public static final RESULT_MULTIPLE_ROI:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final RESULT_ROI:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final RESULT_TYPE:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TRACK_MODE:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Integer;

    sget-object v1, Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusResultTag$uiwhwR36D9l8_IqVywkLEDBmW1Q;->INSTANCE:Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusResultTag$uiwhwR36D9l8_IqVywkLEDBmW1Q;

    const-class v2, Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v1

    sput-object v1, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_ROI:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v1, Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusResultTag$xZbKwrrvIyzKoGxGmFcI0IeH82I;->INSTANCE:Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusResultTag$xZbKwrrvIyzKoGxGmFcI0IeH82I;

    const-class v2, [Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v1

    sput-object v1, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_MULTIPLE_ROI:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v1, Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusResultTag$ZgZJqHsUF9LhwKmjcf4VdDBXwEw;->INSTANCE:Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusResultTag$ZgZJqHsUF9LhwKmjcf4VdDBXwEw;

    invoke-static {v1, v0}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v1

    sput-object v1, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v1, Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusResultTag$88zU6OQ4u9Oav675nylHE76Y9tE;->INSTANCE:Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusResultTag$88zU6OQ4u9Oav675nylHE76Y9tE;

    invoke-static {v1, v0}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/trackfocus/TrackFocusResultTag;->TRACK_MODE:Lcom/android/camera2/vendortag/VendorTag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingResults.ResultROI"

    return-object v0
.end method

.method static synthetic lambda$static$1()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingResults.ResultMultipleROI"

    return-object v0
.end method

.method static synthetic lambda$static$2()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingResults.TrackerClass"

    return-object v0
.end method

.method static synthetic lambda$static$3()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.objectTrackingResults.TrackerStatus"

    return-object v0
.end method
