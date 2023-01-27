.class public Lcom/mi/config/MiDeviceCompat;
.super Ljava/lang/Object;
.source "MiDeviceCompat.java"

# interfaces
.implements Lcom/mi/config/DeviceFeature;


# static fields
.field private static final sInstance:Lcom/mi/config/MiDeviceCompat;


# instance fields
.field private mDeviceFeature:Lcom/mi/config/DeviceFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/config/MiDeviceCompat;

    invoke-direct {v0}, Lcom/mi/config/MiDeviceCompat;-><init>()V

    sput-object v0, Lcom/mi/config/MiDeviceCompat;->sInstance:Lcom/mi/config/MiDeviceCompat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.mi.device.Device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/config/MiDeviceCompat;->createFeature(Ljava/lang/String;)Lcom/mi/config/DeviceFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/config/MiDeviceCompat;->mDeviceFeature:Lcom/mi/config/DeviceFeature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/config/DeviceAAAA;

    invoke-direct {v0}, Lcom/mi/config/DeviceAAAA;-><init>()V

    iput-object v0, p0, Lcom/mi/config/MiDeviceCompat;->mDeviceFeature:Lcom/mi/config/DeviceFeature;

    :cond_0
    return-void
.end method

.method private static createFeature(Ljava/lang/String;)Lcom/mi/config/DeviceFeature;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/config/DeviceFeature;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static getClassesFromPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Ldalvik/system/DexFile;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public static getDevice()Lcom/mi/config/MiDeviceCompat;
    .locals 1

    sget-object v0, Lcom/mi/config/MiDeviceCompat;->sInstance:Lcom/mi/config/MiDeviceCompat;

    return-object v0
.end method

.method private toUpperFirstChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    aget-char v1, p0, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_0

    aget-char v1, p0, v0

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_0

    aget-char p1, p0, v0

    add-int/lit8 p1, p1, -0x20

    int-to-char p1, p1

    aput-char p1, p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getMimojiBackFacingAecLuxLowLight()I
    .locals 0

    iget-object p0, p0, Lcom/mi/config/MiDeviceCompat;->mDeviceFeature:Lcom/mi/config/DeviceFeature;

    invoke-interface {p0}, Lcom/mi/config/DeviceFeature;->getMimojiBackFacingAecLuxLowLight()I

    move-result p0

    return p0
.end method

.method public isSupportLiveVVMode()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/MiDeviceCompat;->mDeviceFeature:Lcom/mi/config/DeviceFeature;

    invoke-interface {p0}, Lcom/mi/config/DeviceFeature;->isSupportLiveVVMode()Z

    move-result p0

    return p0
.end method

.method public isSupportLiveVVModeUltraWide()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/MiDeviceCompat;->mDeviceFeature:Lcom/mi/config/DeviceFeature;

    invoke-interface {p0}, Lcom/mi/config/DeviceFeature;->isSupportLiveVVModeUltraWide()Z

    move-result p0

    return p0
.end method

.method public supportVlog()Z
    .locals 0

    iget-object p0, p0, Lcom/mi/config/MiDeviceCompat;->mDeviceFeature:Lcom/mi/config/DeviceFeature;

    invoke-interface {p0}, Lcom/mi/config/DeviceFeature;->supportVlog()Z

    move-result p0

    return p0
.end method
