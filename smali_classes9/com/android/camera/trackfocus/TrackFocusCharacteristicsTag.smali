.class public Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;
.super Ljava/lang/Object;
.source "TrackFocusCharacteristicsTag.java"


# static fields
.field public static QUALITY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SUPPORT_TRACK_FOCUS:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusCharacteristicsTag$NE_bGrFUxpMbzX848WSJlc2xG-E;->INSTANCE:Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusCharacteristicsTag$NE_bGrFUxpMbzX848WSJlc2xG-E;

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->SUPPORT_TRACK_FOCUS:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v0, Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusCharacteristicsTag$WQbsTh0bInd4jSyfV4ceMqLYhIA;->INSTANCE:Lcom/android/camera/trackfocus/-$$Lambda$TrackFocusCharacteristicsTag$WQbsTh0bInd4jSyfV4ceMqLYhIA;

    const-class v1, [Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/trackfocus/TrackFocusCharacteristicsTag;->QUALITY_SUPPORTED:Lcom/android/camera2/vendortag/VendorTag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.camera.supportedfeatures.TrackAFSupported"

    return-object v0
.end method

.method static synthetic lambda$static$1()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xiaomi.capabilities.videoMiTrackAF.quality"

    return-object v0
.end method
