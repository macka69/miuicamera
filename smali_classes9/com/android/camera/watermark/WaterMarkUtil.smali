.class public Lcom/android/camera/watermark/WaterMarkUtil;
.super Ljava/lang/Object;
.source "WaterMarkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/watermark/WaterMarkUtil$ICON_TYPE;
    }
.end annotation


# static fields
.field public static final DIR_WATER_MARK:Ljava/lang/String; = "watermarks"

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "ic_water_mark_"

.field private static final GEN2_FILE_NAME_PREFIX:Ljava/lang/String; = "gen2_"

.field private static final ICON_CC:I = 0x1

.field private static final ICON_DUAL:I = 0x2

.field private static final ICON_NONE:I = 0x0

.field private static final ICON_PENTA:I = 0x5

.field private static final ICON_QUAD:I = 0x4

.field private static final ICON_TRIPLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WaterMarkUtil"

.field private static final WATER_MARK_BACK_NAME_COMMON:Ljava/lang/String; = "back_common"

.field private static final WATER_MARK_BACK_NAME_PREFIX:Ljava/lang/String; = "back_"

.field private static final WATER_MARK_FRONT_NAME_COMMON:Ljava/lang/String; = "front_common"

.field private static final WATER_MARK_FRONT_NAME_PREFIX:Ljava/lang/String; = "front_"

.field private static sFrontWaterMarkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sWaterMarkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackIconName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getBackIconType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "penta_back"

    goto :goto_0

    :cond_1
    const-string v0, "quad"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "triple"

    goto :goto_0

    :cond_3
    const-string v0, "dual"

    goto :goto_0

    :cond_4
    const-string v0, "cc_back"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ic_water_mark_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".webp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBackIconNameGen2()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getBackIconType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "dual"

    goto :goto_0

    :cond_0
    const-string v0, "penta"

    goto :goto_0

    :cond_1
    const-string v0, "quad"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "triple"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gen2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".webp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBackIconType()I
    .locals 2

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraBack()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDescription()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportCustomWaterMarkGen2()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraBack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraBack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method private static getExtraSuffix()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/mi/config/Device;->isJ19PReloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reloaded"

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/mi/config/Device;->IS_G7ACN:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/config/Device;->isG7A48M()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "48m"

    return-object v0

    :cond_1
    invoke-static {}, Lcom/mi/config/Device;->isG7AJD()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "speed"

    return-object v0

    :cond_2
    invoke-static {}, Lcom/mi/config/Device;->isF6Lite()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "lite"

    return-object v0

    :cond_3
    invoke-static {}, Lcom/mi/config/Device;->isF7ANoteS()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "s"

    return-object v0

    :cond_4
    invoke-static {}, Lcom/mi/config/Device;->isGlobalF4()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/mi/config/Device;->isProF4()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "pro"

    return-object v0

    :cond_5
    sget-object v0, Lcom/mi/config/Device;->MARKET_NAME:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFrontIconName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getFrontIconType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "penta_front"

    goto :goto_0

    :cond_1
    const-string v0, "cc_front"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ic_water_mark_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".webp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFrontIconType()I
    .locals 2

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraFront()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFrontTitle()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraFront()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraFront()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private static getStringId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 2

    const-string/jumbo v0, "string"

    const-string v1, "com.android.camera"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getTitle()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraBack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraBack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private static getWaterCameraBack()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sWaterMarkList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "back_"

    const-string v2, "back_common"

    invoke-static {v0, v1, v2}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterMarkId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sWaterMarkList:Ljava/util/List;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportCustomWaterMarkGen2()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sWaterMarkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Back camera water mark need four parameters!"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sWaterMarkList:Ljava/util/List;

    return-object v0
.end method

.method private static getWaterCameraFront()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sFrontWaterMarkList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "front_"

    const-string v2, "front_common"

    invoke-static {v0, v1, v2}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterMarkId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sFrontWaterMarkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Front camera water mark need two parameters!"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sFrontWaterMarkList:Ljava/util/List;

    return-object v0
.end method

.method private static getWaterMarkId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isIndiaDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_india"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getExtraSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWaterMarkId: all = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WaterMarkUtil"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1}, Lcom/android/camera/watermark/WaterMarkUtil;->getStringId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWaterMarkId: find first = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-static {p0, v0}, Lcom/android/camera/watermark/WaterMarkUtil;->getStringId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWaterMarkId: find second = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-static {p0, p1}, Lcom/android/camera/watermark/WaterMarkUtil;->getStringId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getWaterMarkId: find third = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    invoke-static {p0, p2}, Lcom/android/camera/watermark/WaterMarkUtil;->getStringId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
