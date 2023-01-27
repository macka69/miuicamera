.class public Lcom/android/camera/hdr10/HDR10Characteristics;
.super Ljava/lang/Object;
.source "HDR10Characteristics.java"


# static fields
.field public static AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag; = null
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

.field public static final HDR10PLUS_MODE:I = 0x2

.field public static final HDR10_MODE:I = 0x1

.field public static final NONE_MODE:I = 0x0

.field public static final SUPPORT_VIDEO_HDR10:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "HDR10Characteristics"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/camera/hdr10/-$$Lambda$HDR10Characteristics$waDMFUaTHr5DyWf0KyFxd2ObKwU;->INSTANCE:Lcom/android/camera/hdr10/-$$Lambda$HDR10Characteristics$waDMFUaTHr5DyWf0KyFxd2ObKwU;

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->SUPPORT_VIDEO_HDR10:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v0, Lcom/android/camera/hdr10/-$$Lambda$HDR10Characteristics$NXNhWxP66Z8_eZx33YaRUVMulL4;->INSTANCE:Lcom/android/camera/hdr10/-$$Lambda$HDR10Characteristics$NXNhWxP66Z8_eZx33YaRUVMulL4;

    const-class v1, [Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCurrentQualitySupportHdr10(Lcom/android/camera2/CameraCapabilities;III)Z
    .locals 3

    sget-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "HDR10Characteristics"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "isCurrentQualitySupportHdr10 AVAILABLE_CONFIGURATIONS is not defined"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    if-nez p0, :cond_1

    const-string p0, "isCurrentQualitySupportHdr10.support is null"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_2

    const-string p0, "isCurrentQualitySupportHdr10.support.length % 3 != 0"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    move v0, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_4

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_3

    add-int/lit8 v1, v0, 0x2

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p3, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_4
    return v2
.end method

.method public static isVideoHdrModeSupported(Lcom/android/camera2/CameraCapabilities;I)Z
    .locals 3

    sget-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraCapabilities;->isTagDefined(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "HDR10Characteristics"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "isCurrentDeviceSupportHdr10 AVAILABLE_CONFIGURATIONS is not defined"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    const-string p0, "isCurrentDeviceSupportHdr10.support is null"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xiaomi.videohdrmode.value"

    return-object v0
.end method

.method static synthetic lambda$static$1()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.HDRVideoDisplayMode.availableconfigurations"

    return-object v0
.end method
