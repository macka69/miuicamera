.class public Lcom/mi/config/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static final ASD_FLASH_MASK:I = 0x1

.field private static final ASD_MOTION_MASK:I = 0x4

.field private static final ASD_NIGHT_MASK:I = 0x8

.field public static final BUILD_DEVICE:Ljava/lang/String;

.field private static final HWID_PROPERTY:Ljava/lang/String; = "ro.boot.hwversion"

.field public static final IS_C3J:Z

.field public static final IS_C3L:Z

.field public static final IS_C3M:Z

.field public static final IS_CM_PHONE:Z

.field public static final IS_CM_TEST:Z

.field public static final IS_D5X:Z

.field public static final IS_E1:Z

.field public static final IS_E10:Z

.field public static final IS_E2:Z

.field public static final IS_E5:Z

.field public static final IS_E5G:Z

.field public static final IS_F1:Z

.field public static final IS_F10:Z

.field public static final IS_F11:Z

.field public static final IS_F1X_OR_F1U:Z

.field public static final IS_F2:Z

.field public static final IS_F3B:Z

.field public static final IS_F3M:Z

.field public static final IS_F4:Z

.field public static final IS_F7A:Z

.field public static final IS_F7B:Z

.field public static final IS_F9S:Z

.field public static final IS_F9S_ANDROID_ONE:Z

.field public static final IS_G7:Z

.field public static final IS_G7A:Z

.field public static final IS_G7ACN:Z

.field public static final IS_G7B:Z

.field public static final IS_G7I:Z

.field public static final IS_J1:Z

.field public static final IS_J10:Z

.field public static final IS_J11_LOW:Z

.field public static final IS_J11_PRO:Z

.field public static final IS_J15S:Z

.field public static final IS_J17:Z

.field public static final IS_J18:Z

.field public static final IS_J19S_OR_J19C:Z

.field public static final IS_J1S:Z

.field public static final IS_J2:Z

.field public static final IS_J20S:Z

.field public static final IS_J22:Z

.field public static final IS_J3S:Z

.field public static final IS_J6:Z

.field public static final IS_J7A:Z

.field public static final IS_J7B:Z

.field public static final IS_J9:Z

.field public static final IS_J9A:Z

.field public static final IS_K1:Z

.field public static final IS_K10:Z

.field public static final IS_K11:Z

.field public static final IS_K19:Z

.field public static final IS_K1A:Z

.field public static final IS_K2:Z

.field public static final IS_K6:Z

.field public static final IS_K7A:Z

.field public static final IS_K81_OR_K81A:Z

.field public static final IS_K82:Z

.field public static final IS_K9:Z

.field public static final IS_K9A:Z

.field public static final IS_STABLE:Z

.field public static final IS_U2:Z

.field public static final MARKET_NAME:Ljava/lang/String;

.field public static final MODULE:Ljava/lang/String;

.field public static final VENDOR_MTK:Ljava/lang/String; = "mediatek"

.field public static final VENDOR_QCOM:Ljava/lang/String; = "qcom"

.field private static sFpNavEventNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSoundEnforcedCountry:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/mi/config/Device;->MODULE:Ljava/lang/String;

    const-string v1, "ro.product.marketname"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/config/Device;->MARKET_NAME:Ljava/lang/String;

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "beryllium"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_E10:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "lavender"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_F7A:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "violet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_F7B:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "polaris"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_D5X:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "sirius"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_E2:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "dipper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_E1:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "andromeda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_E5G:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "perseus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_E5:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "cepheus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_F1:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "davinci"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_F10:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "raphael"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_F11:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "grus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_F2:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "begonia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_G7:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "phoenix"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "phoenixin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/mi/config/Device;->IS_G7B:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "begoniain"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_G7I:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "ginkgo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_C3J:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "pyxis"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_F3B:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "vela"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_F3M:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "laurus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_F9S:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "laurel_sprout"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_F9S_ANDROID_ONE:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "tucana"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_F4:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "umi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_J2:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "cmi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_J1:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "cas"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_J1S:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "apollo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "apolloin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/mi/config/Device;->IS_J3S:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "atom"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "apricot"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/mi/config/Device;->IS_J7A:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "bomb"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "banana"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v0, v1

    goto :goto_7

    :cond_7
    :goto_6
    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/mi/config/Device;->IS_J7B:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "lmi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "lmiin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move v0, v1

    goto :goto_9

    :cond_9
    :goto_8
    move v0, v2

    :goto_9
    sput-boolean v0, Lcom/mi/config/Device;->IS_J11_LOW:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "lmipro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "lmiinpro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move v0, v1

    goto :goto_b

    :cond_b
    :goto_a
    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/mi/config/Device;->IS_J11_PRO:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "draco"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_U2:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "picasso"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v4, "picassoin"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    move v0, v1

    goto :goto_d

    :cond_d
    :goto_c
    move v0, v2

    :goto_d
    sput-boolean v0, Lcom/mi/config/Device;->IS_G7A:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v4, "monet"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v4, "monetin"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_e

    :cond_e
    move v0, v1

    goto :goto_f

    :cond_f
    :goto_e
    move v0, v2

    :goto_f
    sput-boolean v0, Lcom/mi/config/Device;->IS_J9:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v4, "vangogh"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_J9A:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_G7ACN:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "gauguin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "gauguinpro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "gauguininpro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_10

    :cond_10
    move v0, v1

    goto :goto_11

    :cond_11
    :goto_10
    move v0, v2

    :goto_11
    sput-boolean v0, Lcom/mi/config/Device;->IS_J17:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "cezanne"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_J10:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "crux"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_F1X_OR_F1U:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "curtana"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "durandal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "excalibur"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "joyeuse"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "gram"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_12

    :cond_12
    move v0, v1

    goto :goto_13

    :cond_13
    :goto_12
    move v0, v2

    :goto_13
    sput-boolean v0, Lcom/mi/config/Device;->IS_J6:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "dandelion"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_C3L:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "angelica"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "angelican"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "angelicain"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "cattail"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_14

    :cond_14
    move v0, v1

    goto :goto_15

    :cond_15
    :goto_14
    move v0, v2

    :goto_15
    sput-boolean v0, Lcom/mi/config/Device;->IS_C3M:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "merlin"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "merlinnfc"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_16

    :cond_16
    move v0, v1

    goto :goto_17

    :cond_17
    :goto_16
    move v0, v2

    :goto_17
    sput-boolean v0, Lcom/mi/config/Device;->IS_J15S:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "cannon"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "cannong"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_18

    :cond_18
    move v0, v1

    goto :goto_19

    :cond_19
    :goto_18
    move v0, v2

    :goto_19
    sput-boolean v0, Lcom/mi/config/Device;->IS_J22:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "lime"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "lemon"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "pomelo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "citrus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1a

    :cond_1a
    move v0, v1

    goto :goto_1b

    :cond_1b
    :goto_1a
    move v0, v2

    :goto_1b
    sput-boolean v0, Lcom/mi/config/Device;->IS_J19S_OR_J19C:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "sunny"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "rainbow"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1c

    :cond_1c
    move v0, v1

    goto :goto_1d

    :cond_1d
    :goto_1c
    move v0, v2

    :goto_1d
    sput-boolean v0, Lcom/mi/config/Device;->IS_K7A:Z

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Lcom/mi/config/Device;->IS_STABLE:Z

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    sput-boolean v0, Lcom/mi/config/Device;->IS_CM_TEST:Z

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    sput-boolean v0, Lcom/mi/config/Device;->IS_CM_PHONE:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "venus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_K2:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "star"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_K1:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "mars"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_K1A:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "renoir"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_K9:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "cetus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_J18:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "ares"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "aresin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1e

    :cond_1e
    move v0, v1

    goto :goto_1f

    :cond_1f
    :goto_1e
    move v0, v2

    :goto_1f
    sput-boolean v0, Lcom/mi/config/Device;->IS_K10:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "haydn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "haydnin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_20

    :cond_20
    move v0, v1

    goto :goto_21

    :cond_21
    :goto_20
    move v0, v2

    :goto_21
    sput-boolean v0, Lcom/mi/config/Device;->IS_K11:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "courbet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "courbetin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_22

    :cond_22
    move v0, v1

    goto :goto_23

    :cond_23
    :goto_22
    move v0, v2

    :goto_23
    sput-boolean v0, Lcom/mi/config/Device;->IS_K9A:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "sweet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "sweetin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "sweetin_pro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "sweet_pro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_24

    :cond_24
    move v0, v1

    goto :goto_25

    :cond_25
    :goto_24
    move v0, v2

    :goto_25
    sput-boolean v0, Lcom/mi/config/Device;->IS_K6:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "vayu"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "bhima"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_26

    :cond_26
    move v0, v1

    goto :goto_27

    :cond_27
    :goto_26
    move v0, v2

    :goto_27
    sput-boolean v0, Lcom/mi/config/Device;->IS_J20S:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "camellia"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "camellian"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_28

    :cond_28
    move v0, v1

    goto :goto_29

    :cond_29
    :goto_28
    move v0, v2

    :goto_29
    sput-boolean v0, Lcom/mi/config/Device;->IS_K19:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "enuma"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v3, "elish"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_2a
    move v1, v2

    :cond_2b
    sput-boolean v1, Lcom/mi/config/Device;->IS_K81_OR_K81A:Z

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "nabu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/Device;->IS_K82:Z

    const-string v0, "KR"

    const-string v1, "JP"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/config/Device;->sSoundEnforcedCountry:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustScreenLight()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_CM_TEST:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->adjustScreenLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static enableAlgorithmInFileSuffix()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->enableAlgorithmInFileSuffix()Z

    move-result v0

    return v0
.end method

.method public static exposureCompensationStepsNum()F
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->exposureCompensationStepsNum()F

    move-result v0

    return v0
.end method

.method public static getBurstShootCount()I
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->getBurstShootCount()I

    move-result v0

    return v0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/camera/Util;->sRegion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFpNavEventNameList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/config/Device;->sFpNavEventNameList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mi/config/Device;->sFpNavEventNameList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/mi/config/Device;->getFpNavNameList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    sget-object v1, Lcom/mi/config/Device;->sFpNavEventNameList:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/mi/config/Device;->sFpNavEventNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getFpNavNameList()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->getFpNavNameList()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHibernationTimeout()I
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->getHibernationTimeout()I

    move-result v0

    return v0
.end method

.method public static getHighScreenRefreshRateList()[I
    .locals 4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->getHighScreenRefreshRateList()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v0, v2, [I

    return-object v0

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [I

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static iSSensorHasLatency()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->iSSensorHasLatency()Z

    move-result v0

    return v0
.end method

.method public static is18x9RatioScreen()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->is18x9RatioScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBackFingerSensor()Z
    .locals 2

    invoke-static {}, Lcom/mi/config/Device;->isFrontFingerSensor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportFingerSensor()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/mi/config/Device;->getFpNavEventNameList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/config/Device;->getFpNavEventNameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static isBackMFNRAlwaysOn()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpExtra4Mmcam()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/Device;->IS_G7B:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCameraSoundEnforced()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/config/Device;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/config/Device;->isSoundEnforcedCountry(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isEffectWatermarkFilted()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isEffectWatermarkFilted()Z

    move-result v0

    return v0
.end method

.method public static isF1U()Z
    .locals 2

    const-string v0, "ro.boot.hwversion"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/mi/config/Device;->IS_F1X_OR_F1U:Z

    if-eqz v1, :cond_1

    const-string v1, "7.1.7"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "7.2.0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isF6Lite()Z
    .locals 3

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "onc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.hwversion"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x32

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isF7ANote()Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/Device;->IS_F7A:Z

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isF7ANoteS()Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/Device;->IS_F7A:Z

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India_48_5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isFodDevice()Z
    .locals 2

    const-string v0, "ro.hardware.fp.fod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFrontCameraAtBottom()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_D5X:Z

    return v0
.end method

.method private static isFrontFingerSensor()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isFrontFingerSensor()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/config/Device;->isFodDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isFrontMFNRAlwaysOn()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/Device;->isGlobalE5()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/Device;->IS_F3B:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/Device;->IS_F2:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportAlgoUpExtra4Mmcam()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isFrontVideoQualityShouldBe1080P()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isFrontVideoQualityShouldBe1080P()Z

    move-result v0

    return v0
.end method

.method public static isG7()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_G7:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/Device;->IS_G7I:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isG7A48M()Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/Device;->IS_G7ACN:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasso_48m"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isG7AJD()Z
    .locals 6

    sget-boolean v0, Lcom/mi/config/Device;->IS_G7ACN:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const-string v2, "3.9.3"

    const-string v3, "3.9.5"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "ro.boot.hwversion"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isGlobal()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method public static isGlobalE1S()Z
    .locals 2

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGlobalE5()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_E5:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGlobalF1()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_F1:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGlobalF10()Z
    .locals 2

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGlobalF11()Z
    .locals 2

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGlobalF3B()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_F3B:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGlobalF4()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_F4:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGlobalF4L()Z
    .locals 2

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "toco"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGlobalJ11()Z
    .locals 2

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "lmi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGlobalJ15S()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_J15S:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHalDoesCafWhenFlashOn()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isHalDoesCafWhenFlashOn()Z

    move-result v0

    return v0
.end method

.method public static isHoldBlurBackground()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isHoldBlurBackground()Z

    move-result v0

    return v0
.end method

.method public static isINDIAE10()Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/Device;->IS_E10:Z

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isISPRotated()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isISPRotated()Z

    move-result v0

    return v0
.end method

.method public static isIndiaJ6()Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/Device;->IS_J6:Z

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isJ11()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_J11_LOW:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/Device;->IS_J11_PRO:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isJ19PReloaded()Z
    .locals 3

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "shiva"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "ro.boot.hwversion"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2615.39.1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static isLowF4()Z
    .locals 3

    sget-boolean v0, Lcom/mi/config/Device;->IS_F4:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string v2, "03"

    if-lt v0, v1, :cond_1

    const-string v0, "persist.vendor.camera.rearMain.vendorID"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "persist.camera.rearMain.vendorID"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLowPowerQRScan()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isLowPowerQRScan()Z

    move-result v0

    return v0
.end method

.method public static isMTKPlatform()Z
    .locals 2

    invoke-static {}, Lcom/mi/config/Device;->vendorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediatek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPad()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isPad()Z

    move-result v0

    return v0
.end method

.method public static isPremiumEditionF11()Z
    .locals 2

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Premium Edition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProF4()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/Device;->IS_F4:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/config/Device;->isLowF4()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isQcomPlatform()Z
    .locals 2

    invoke-static {}, Lcom/mi/config/Device;->vendorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRGB888EGLPreferred()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isRGB888EGLPreferred()Z

    move-result v0

    return v0
.end method

.method public static isRecorderBoostSupported()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->supportRecorderBoost()Z

    move-result v0

    return v0
.end method

.method public static isReplaceHighCostEffect()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isReplaceHighCostEffect()Z

    move-result v0

    return v0
.end method

.method private static isSoundEnforcedCountry(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/mi/config/Device;->sSoundEnforcedCountry:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isSubThreadFrameListener()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSubThreadFrameListener()Z

    move-result v0

    return v0
.end method

.method public static isSupport3DFaceBeauty()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupport3DFaceBeauty()Z

    move-result v0

    return v0
.end method

.method public static isSupportCameraRole()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportCameraRole()Z

    move-result v0

    return v0
.end method

.method public static isSupportFrontBeautyMFNR()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportFrontBeautyMFNR()Z

    move-result v0

    return v0
.end method

.method public static isSupportFrontFlash()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportFrontFlash()Z

    move-result v0

    return v0
.end method

.method public static isSupportGradienter()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportGradienter()Z

    move-result v0

    return v0
.end method

.method public static isSupportHandGesture()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportHandGesture()Z

    move-result v0

    return v0
.end method

.method public static isSupportMiFaceBeauty()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportMiFaceBeauty()Z

    move-result v0

    return v0
.end method

.method public static isSupportNewFaceBeauty()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/Device;->isSupport3DFaceBeauty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/config/Device;->isSupportMiFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportPSensorPocketMode()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportPSensorPocketMode()Z

    move-result v0

    return v0
.end method

.method public static isSupportScene()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportAiScene()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSupportScreenLight()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportScreenLight()Z

    move-result v0

    return v0
.end method

.method public static isSupportSpeechShutter()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportSpeechShutter()Z

    move-result v0

    return v0
.end method

.method public static isSupportSuperResolution()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportSuperResolution()Z

    move-result v0

    return v0
.end method

.method public static isSupportedASD()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/Device;->supportAsd()I

    move-result v0

    and-int/lit8 v0, v0, 0xd

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportedAoHDR()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedAoHDR()Z

    move-result v0

    return v0
.end method

.method public static isSupportedAsdFlash()Z
    .locals 2

    invoke-static {}, Lcom/mi/config/Device;->supportAsd()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportedChromaFlash()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedChromaFlash()Z

    move-result v0

    return v0
.end method

.method public static isSupportedEdgeTouch()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedEdgeTouch()Z

    move-result v0

    return v0
.end method

.method public static isSupportedGPS()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedGPS()Z

    move-result v0

    return v0
.end method

.method public static isSupportedLongPressBurst()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedLongPressBurst()Z

    move-result v0

    return v0
.end method

.method public static isSupportedManualFunction()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedManualFunction()Z

    move-result v0

    return v0
.end method

.method public static isSupportedMovieSolid()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/Device;->isF6Lite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedMovieSolid()Z

    move-result v0

    return v0
.end method

.method public static isSupportedMuteCameraSound()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/Device;->isCameraSoundEnforced()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSupportedNewStyleTimeWaterMark()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedNewStyleTimeWaterMark()Z

    move-result v0

    return v0
.end method

.method public static isSupportedObjectTrack()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedObjectTrack()Z

    move-result v0

    return v0
.end method

.method public static isSupportedOpticalZoom()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedOpticalZoom()Z

    move-result v0

    return v0
.end method

.method public static isSupportedPeakingMF()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedPeakingMF()Z

    move-result v0

    return v0
.end method

.method public static isSupportedQuickSnap()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedQuickSnap()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportedSecondaryStorage()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedSecondaryStorage()Z

    move-result v0

    return v0
.end method

.method public static isSupportedShaderEffect()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedShaderEffect()Z

    move-result v0

    return v0
.end method

.method public static isSupportedSkinBeautify()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedSkinBeautify()Z

    move-result v0

    return v0
.end method

.method public static isSupportedStereo()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedStereo()Z

    move-result v0

    return v0
.end method

.method public static isSupportedTiltShift()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedTiltShift()Z

    move-result v0

    return v0
.end method

.method public static isSupportedTimeWaterMark()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedTimeWaterMark()Z

    move-result v0

    return v0
.end method

.method public static isSupportedTorchCapture()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedTorchCapture()Z

    move-result v0

    return v0
.end method

.method public static isSupportedVideoPause()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedVideoPause()Z

    move-result v0

    return v0
.end method

.method public static isSupportedVideoQuality4kUHD()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSupportedVideoQuality4kUHD()Z

    move-result v0

    return v0
.end method

.method public static isSurfaceSizeLimited()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isSurfaceSizeLimited()Z

    move-result v0

    return v0
.end method

.method public static isThirdDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isVideoSnapshotSizeLimited()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->isVideoSnapshotSizeLimited()Z

    move-result v0

    return v0
.end method

.method public static needDisableParallelShotWithHugeMemoryCapture6G()Z
    .locals 4

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->needDisableParallelShotInHugeMemoryCapture6G()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static pictureWatermarkDefaultValue(Z)Z
    .locals 3

    const-string v0, "ro.miui.customized.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr_sfr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "fr_orange"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "jp_kd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "es_vodafone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/config/Device;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public static reducePreviewFlag()I
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->reducePreviewFlag()I

    move-result v0

    return v0
.end method

.method public static supportAsd()I
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->supportAsd()I

    move-result v0

    return v0
.end method

.method public static supportCameraConfigProp()Z
    .locals 2

    const-string v0, "ro.boot.camera.config"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportHighScreenRefreshRate()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/Device;->getHighScreenRefreshRateList()[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportNewGoogleLens()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->supportNewGoogleLens()Z

    move-result v0

    return v0
.end method

.method public static supportPictureWaterMark()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->supportPictureWaterMark()Z

    move-result v0

    return v0
.end method

.method public static supportRealtimeManualExposureTime()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getConfig()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->supportRealtimeManualExposureTime()Z

    move-result v0

    return v0
.end method

.method public static vendorName()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "mt[0-9]*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mediatek"

    return-object v0

    :cond_1
    return-object v1
.end method
