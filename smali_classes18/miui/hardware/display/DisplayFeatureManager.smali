.class public Lmiui/hardware/display/DisplayFeatureManager;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;
    }
.end annotation


# static fields
.field private static final CONFIG_SERVICENAME_RESOURCEID:I

.field public static final DEFALUT_GAMUT_MODE:I = 0x0

.field public static final DEFALUT_SCREEN_COLOR:I = 0x2

.field private static final DISPLAY_FEATURE_SERVICE:Ljava/lang/String; = "DisplayFeatureControl"

.field public static final DISPLAY_INFO_GRAY:I = 0x0

.field private static final DOZE_BRIGHTNESS_STATE:I = 0x19

.field public static final EXT_COLOR_PROC_STATE:I = 0xf

.field private static final HIDL_SERVICENAME_DEFAULT:Ljava/lang/String; = "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

.field private static final MIUI_MULTI_DMS_NAME:Ljava/lang/String; = "miui_multi_display"

.field public static final MODE_SCREEN_FPS_DYNAMIC_ACCOMMODATION:I = 0x18

.field public static final PROPERTY_ASSERTIVE_DISPLAY:Ljava/lang/String; = "persist.sys.ltm_enable"

.field public static final PROPERTY_GAMUT_MODE:Ljava/lang/String; = "persist.sys.gamut_mode"

.field public static final PROPERTY_SCREEN_COLOR:Ljava/lang/String; = "persist.sys.display_prefer"

.field public static final PROPERTY_SCREEN_SATURATION:Ljava/lang/String; = "persist.sys.display_ce"

.field public static final SCREEN_ADAPT:I = 0x0

.field public static final SCREEN_ENHANCE:I = 0x1

.field public static final SCREEN_EXPERT:I = 0x1a

.field public static final SCREEN_EYECARE:I = 0x3

.field public static final SCREEN_GAME_HDR:I = 0x13

.field public static final SCREEN_HIGHLIGHT:I = 0xb

.field public static final SCREEN_MONOCHROME:I = 0x4

.field public static final SCREEN_NIGHTLIGHT:I = 0x9

.field public static final SCREEN_STANDARD:I = 0x2

.field public static final SCREEN_SUNLIGHT:I = 0x8

.field public static final SCREEN_TEXTURE_COLOR:I = 0x1f

.field public static final SCREEN_UNLIMITED_COLOR:I = 0x17

.field public static final SET_COLOR_MODE:I = 0x7530

.field public static final SET_DC_PARSE_STATE:I = 0x9c40

.field public static final SOCKET_FPS_SWITCH_SMART:I = 0x100

.field private static final SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

.field private static final SUPPORT_SET_FEATURE:Z

.field private static TAG:Ljava/lang/String; = null

.field public static final UPDATE_DFPS_MODE:I = 0x2733

.field public static final UPDATE_PCC_LEVEL:I = 0x4e20

.field public static final UPDATE_SECONDARY_FRAME_RATE:I = 0x2734

.field public static final UPDATE_SMART_DFPS_MODE:I = 0x2735

.field public static final UPDATE_WCG_STATE:I = 0x2710

.field public static final VALUE_DISABLE_FPS_DYNAMIC_ACCOMMODATION:I = 0xff

.field private static volatile sInstance:Lmiui/hardware/display/DisplayFeatureManager;


# instance fields
.field private mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

.field private mLock:Ljava/lang/Object;

.field private mMultiDisplayManager:Lmiui/hardware/display/IMiuiMultiDisplayManager;

.field private mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "DisplayFeatureManager"

    sput-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    nop

    const-string v0, "support_screen_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lmiui/hardware/display/DisplayFeatureManager;->SUPPORT_SET_FEATURE:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "config_displayFeatureHidlServiceName"

    const-string v3, "string"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    nop

    const-string v0, "ro.vendor.aod.brightness.cust"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/hardware/display/DisplayFeatureManager;->SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initServiceDeathRecipient()V

    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    const-string v0, "miui_multi_display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/hardware/display/IMiuiMultiDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mMultiDisplayManager:Lmiui/hardware/display/IMiuiMultiDisplayManager;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lmiui/hardware/display/DisplayFeatureManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/hardware/display/DisplayFeatureManager;Lmiui/hardware/display/DisplayFeatureServiceProxy;)Lmiui/hardware/display/DisplayFeatureServiceProxy;
    .locals 0

    iput-object p1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    return-object p1
.end method

.method private getEffectedDisplayIndex()[I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mMultiDisplayManager:Lmiui/hardware/display/IMiuiMultiDisplayManager;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lmiui/hardware/display/IMiuiMultiDisplayManager;->getScreenEffectAvailableDisplay()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lmiui/hardware/display/DisplayFeatureManager;
    .locals 2

    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    if-nez v0, :cond_1

    const-class v0, Lmiui/hardware/display/DisplayFeatureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    if-nez v1, :cond_0

    new-instance v1, Lmiui/hardware/display/DisplayFeatureManager;

    invoke-direct {v1}, Lmiui/hardware/display/DisplayFeatureManager;-><init>()V

    sput-object v1, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lmiui/hardware/display/DisplayFeatureManager;->sInstance:Lmiui/hardware/display/DisplayFeatureManager;

    return-object v0
.end method

.method private initProxyLocked()V
    .locals 5

    :try_start_0
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v0, :cond_2

    sget v0, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    if-nez v0, :cond_0

    const-string v0, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initProxyLoced CONFIG_SERVICENAME_RESOURCEID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lmiui/hardware/display/DisplayFeatureManager;->CONFIG_SERVICENAME_RESOURCEID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hidlServiceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lmiui/hardware/display/DisplayFeatureManager;->mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x2711

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    new-instance v2, Lmiui/hardware/display/DisplayFeatureServiceProxy;

    invoke-direct {v2, v1}, Lmiui/hardware/display/DisplayFeatureServiceProxy;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    :cond_1
    goto :goto_1

    :cond_2
    const-string v0, "DisplayFeatureControl"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v1, Lmiui/hardware/display/DisplayFeatureServiceProxy;

    invoke-direct {v1, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "initProxyLocked failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private initServiceDeathRecipient()V
    .locals 1

    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager$1;

    invoke-direct {v0, p0}, Lmiui/hardware/display/DisplayFeatureManager$1;-><init>(Lmiui/hardware/display/DisplayFeatureManager;)V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mHwBinderDeathHandler:Landroid/os/IHwBinder$DeathRecipient;

    goto :goto_0

    :cond_0
    new-instance v0, Lmiui/hardware/display/DisplayFeatureManager$2;

    invoke-direct {v0, p0}, Lmiui/hardware/display/DisplayFeatureManager$2;-><init>(Lmiui/hardware/display/DisplayFeatureManager;)V

    iput-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mBinderDeathHandler:Landroid/os/IBinder$DeathRecipient;

    :goto_0
    return-void
.end method


# virtual methods
.method public getColorPrefer()I
    .locals 2

    const-string v0, "persist.sys.display_prefer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenGamut()I
    .locals 2

    const-string v0, "persist.sys.gamut_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAdEnable()Z
    .locals 2

    const-string v0, "persist.sys.ltm_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public registerCallback(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V

    :cond_0
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->registerCallback(ILjava/lang/Object;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDisplayStateIgnoreFold(IZ)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mMultiDisplayManager:Lmiui/hardware/display/IMiuiMultiDisplayManager;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2}, Lmiui/hardware/display/IMiuiMultiDisplayManager;->setDisplayStateIgnoreFold(IZ)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public setDozeBrightness(II)V
    .locals 2

    move v0, p1

    sget-boolean v1, Lmiui/hardware/display/DisplayFeatureManager;->SUPPORT_MULTIPLE_AOD_BRIGHTNESS:Z

    if-nez v1, :cond_2

    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_TO_NORMAL:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    if-le p1, p2, :cond_0

    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_BRIGHTNESS_HBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->DOZE_BRIGHTNESS_LBM:Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lmiui/hardware/display/DisplayFeatureManager$DozeBrightnessMode;->ordinal()I

    move-result v0

    :cond_2
    const/16 v1, 0x19

    invoke-virtual {p0, v1, v0}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    return-void
.end method

.method public setScreenEffect(II)V
    .locals 1

    const/16 v0, 0xff

    invoke-virtual {p0, p1, p2, v0}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    return-void
.end method

.method public setScreenEffect(III)V
    .locals 3

    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->getEffectedDisplayIndex()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setScreenEffect(IIII)V
    .locals 4

    iget-object v0, p0, Lmiui/hardware/display/DisplayFeatureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/hardware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenEffect displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmiui/hardware/display/DisplayFeatureManager;->initProxyLocked()V

    :cond_0
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureManager;->mProxy:Lmiui/hardware/display/DisplayFeatureServiceProxy;

    invoke-virtual {v1, p1, p2, p3, p4}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->setFeature(IIII)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
