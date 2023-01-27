.class public Lcom/android/camera2/HardwareCapabilities;
.super Ljava/lang/Object;
.source "HardwareCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/HardwareCapabilities$TypedValue;
    }
.end annotation


# static fields
.field private static final DOT_TYPE_8K:Lcom/android/camera2/HardwareCapabilities$TypedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOT_TYPE_8K_NONE:I = 0x0

.field public static final DOT_TYPE_8K_SAT:I = 0x2

.field public static final DOT_TYPE_8K_SUPPRESS:I = 0x1

.field private static final IS_8K_SUPPORTED_BY_ALL_PHYSICAL_CAMERAS_IN_VIDEO_SAT:Lcom/android/camera2/HardwareCapabilities$TypedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_8K_SUPPORTED_BY_ULTRA_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SUPER_NIGHT_YUV_REPROCESS_SUPPORTED_BY_MAIN_BACK_FACING_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_ULTRA_PIXEL_RAW_SUPPORTED_BY_TELE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_ULTRA_PIXEL_RAW_SUPPORTED_BY_ULTRA_TELE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_ULTRA_PIXEL_RAW_SUPPORTED_BY_ULTRA_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_ULTRA_PIXEL_RAW_SUPPORTED_BY_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_ULTRA_PIXEL_SUPPORTED_BY_TELE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_ULTRA_PIXEL_SUPPORTED_BY_ULTRA_TELE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_ULTRA_PIXEL_SUPPORTED_BY_ULTRA_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_ULTRA_PIXEL_SUPPORTED_BY_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/HardwareCapabilities$TypedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera2/HardwareCapabilities$1;

    invoke-direct {v0}, Lcom/android/camera2/HardwareCapabilities$1;-><init>()V

    sput-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_SUPPORTED_BY_ULTRA_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    new-instance v0, Lcom/android/camera2/HardwareCapabilities$2;

    invoke-direct {v0}, Lcom/android/camera2/HardwareCapabilities$2;-><init>()V

    sput-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_SUPPORTED_BY_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    new-instance v0, Lcom/android/camera2/HardwareCapabilities$3;

    invoke-direct {v0}, Lcom/android/camera2/HardwareCapabilities$3;-><init>()V

    sput-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_SUPPORTED_BY_TELE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    new-instance v0, Lcom/android/camera2/HardwareCapabilities$4;

    invoke-direct {v0}, Lcom/android/camera2/HardwareCapabilities$4;-><init>()V

    sput-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_SUPPORTED_BY_ULTRA_TELE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    new-instance v0, Lcom/android/camera2/HardwareCapabilities$5;

    invoke-direct {v0}, Lcom/android/camera2/HardwareCapabilities$5;-><init>()V

    sput-object v0, Lcom/android/camera2/HardwareCapabilities;->DOT_TYPE_8K:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    new-instance v0, Lcom/android/camera2/HardwareCapabilities$6;

    invoke-direct {v0}, Lcom/android/camera2/HardwareCapabilities$6;-><init>()V

    sput-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_8K_SUPPORTED_BY_ALL_PHYSICAL_CAMERAS_IN_VIDEO_SAT:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    new-instance v0, Lcom/android/camera2/HardwareCapabilities$7;

    invoke-direct {v0}, Lcom/android/camera2/HardwareCapabilities$7;-><init>()V

    sput-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_8K_SUPPORTED_BY_ULTRA_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    new-instance v0, Lcom/android/camera2/HardwareCapabilities$8;

    invoke-direct {v0}, Lcom/android/camera2/HardwareCapabilities$8;-><init>()V

    sput-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_SUPER_NIGHT_YUV_REPROCESS_SUPPORTED_BY_MAIN_BACK_FACING_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    new-instance v0, Lcom/android/camera2/HardwareCapabilities$9;

    invoke-direct {v0}, Lcom/android/camera2/HardwareCapabilities$9;-><init>()V

    sput-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_RAW_SUPPORTED_BY_ULTRA_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    new-instance v0, Lcom/android/camera2/HardwareCapabilities$10;

    invoke-direct {v0}, Lcom/android/camera2/HardwareCapabilities$10;-><init>()V

    sput-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_RAW_SUPPORTED_BY_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    new-instance v0, Lcom/android/camera2/HardwareCapabilities$11;

    invoke-direct {v0}, Lcom/android/camera2/HardwareCapabilities$11;-><init>()V

    sput-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_RAW_SUPPORTED_BY_TELE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    new-instance v0, Lcom/android/camera2/HardwareCapabilities$12;

    invoke-direct {v0}, Lcom/android/camera2/HardwareCapabilities$12;-><init>()V

    sput-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_RAW_SUPPORTED_BY_ULTRA_TELE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/camera2/HardwareCapabilities;->support8K(I)Z

    move-result p0

    return p0
.end method

.method public static get8KDotType()I
    .locals 1

    sget-object v0, Lcom/android/camera2/HardwareCapabilities;->DOT_TYPE_8K:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    invoke-virtual {v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static is8KSupportedByAllPhysicalCamerasInVideoSat()Z
    .locals 1

    sget-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_8K_SUPPORTED_BY_ALL_PHYSICAL_CAMERAS_IN_VIDEO_SAT:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    invoke-virtual {v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static is8KSupportedByUltraWideCamera()Z
    .locals 1

    sget-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_8K_SUPPORTED_BY_ULTRA_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    invoke-virtual {v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSuperNightYUVReprocessSupportedByMainBackFacingCamera()Z
    .locals 1

    sget-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_SUPER_NIGHT_YUV_REPROCESS_SUPPORTED_BY_MAIN_BACK_FACING_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    invoke-virtual {v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUltraPixelRawSupportedByTele()Z
    .locals 1

    sget-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_RAW_SUPPORTED_BY_TELE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    invoke-virtual {v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUltraPixelRawSupportedByUltraTele()Z
    .locals 1

    sget-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_RAW_SUPPORTED_BY_ULTRA_TELE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    invoke-virtual {v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUltraPixelRawSupportedByUltraWide()Z
    .locals 1

    sget-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_RAW_SUPPORTED_BY_ULTRA_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    invoke-virtual {v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUltraPixelRawSupportedByWide()Z
    .locals 1

    sget-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_RAW_SUPPORTED_BY_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    invoke-virtual {v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUltraPixelSupportedByTele()Z
    .locals 1

    sget-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_SUPPORTED_BY_TELE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    invoke-virtual {v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUltraPixelSupportedByUltraTele()Z
    .locals 1

    sget-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_SUPPORTED_BY_ULTRA_TELE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    invoke-virtual {v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUltraPixelSupportedByUltraWide()Z
    .locals 1

    sget-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_SUPPORTED_BY_ULTRA_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    invoke-virtual {v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUltraPixelSupportedByWide()Z
    .locals 1

    sget-object v0, Lcom/android/camera2/HardwareCapabilities;->IS_ULTRA_PIXEL_SUPPORTED_BY_WIDE_CAMERA:Lcom/android/camera2/HardwareCapabilities$TypedValue;

    invoke-virtual {v0}, Lcom/android/camera2/HardwareCapabilities$TypedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static support8K(I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-class v2, Landroid/media/MediaRecorder;

    const v3, 0x8004

    invoke-virtual {v1, v2, v3}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithTargetMode(Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->get8kProfile()I

    move-result v2

    new-instance v3, Lcom/android/camera/CameraSize;

    const/16 v4, 0x1e00

    const/16 v5, 0x10e0

    invoke-direct {v3, v4, v5}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method
