.class public Lcom/android/camera/backup/CameraSettingsBackupImpl;
.super Ljava/lang/Object;
.source "CameraSettingsBackupImpl.java"

# interfaces
.implements Lmiui/cloud/backup/ICloudBackup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;
    }
.end annotation


# static fields
.field private static final FRONT_CLOUD_CAMERA_ID:I = 0x1

.field private static final PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

.field private static final REAR_CLOUD_CAMERA_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraSettingsBackup"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/camera/backup/CameraBackupSettings;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    sput-object v0, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPrefixToEntries([Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;
    .locals 8

    array-length v0, p0

    new-array v0, v0, [Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_8

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getValueClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getCloudKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getLocalKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v2, :cond_0

    invoke-static {v4, v5}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    goto :goto_1

    :cond_0
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v4, v5, v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createIntEntry(Ljava/lang/String;Ljava/lang/String;I)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v2, :cond_2

    invoke-static {v4, v5}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    goto :goto_1

    :cond_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v4, v5, v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createBoolEntry(Ljava/lang/String;Ljava/lang/String;Z)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-class v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v2, :cond_4

    invoke-static {v4, v5}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    goto :goto_1

    :cond_4
    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createStringEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    goto :goto_1

    :cond_5
    const-class v7, Ljava/lang/Long;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v2, :cond_6

    invoke-static {v4, v5}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createLongEntry(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    goto :goto_1

    :cond_6
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;->createLongEntry(Ljava/lang/String;Ljava/lang/String;J)Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    :cond_7
    :goto_1
    aput-object v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method private static checkCameraId(I)Z
    .locals 3

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameraId is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getAvailableCameraIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->checkCameraId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->checkCameraId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private static getCloudPrefix(II)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->checkCameraId(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_1

    move p0, v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera_settings_simple_mode_local_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/android/camera/data/data/config/DataItemConfig;->provideLocalId(II)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCloudPrefixByCameraIdAndMode(II)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->checkCameraId(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_1

    move p0, v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera_settings_simple_mode_local_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(II)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedPreferencesName(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera_settings_simple_mode_local_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/android/camera/data/data/config/DataItemConfig;->provideLocalId(II)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleBackupOrRestore(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V
    .locals 9

    const/4 p0, 0x2

    new-array v0, p0, [I

    fill-array-data v0, :array_0

    invoke-static {}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getAvailableCameraIds()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_2

    aget v4, v0, v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v4}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getSharedPreferencesName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v6, v4}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getCloudPrefix(II)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    invoke-static {v8, v6}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    invoke-interface {p3, v7, p2, v6}, Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;->handle(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "camera_settings_global"

    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v0, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    invoke-static {v0, p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object p0

    invoke-interface {p3, p1, p2, p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;->handle(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private restoreFromVersion1(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;)V
    .locals 13

    const-string p0, "camera_settings_global"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-static {}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getAvailableCameraIds()Ljava/util/List;

    move-result-object v4

    move v5, v0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v2, :cond_3

    aget v7, v3, v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9, v7}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getSharedPreferencesName(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    if-eqz v10, :cond_0

    if-nez v7, :cond_1

    move v11, v0

    goto :goto_2

    :cond_1
    move v11, v2

    :goto_2
    invoke-static {v9, v11}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getCloudPrefixByCameraIdAndMode(II)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    invoke-static {v12, v11}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v11

    invoke-static {v10, p2, v11, v0}, Lcom/android/camera/backup/CameraBackupHelper;->restoreSettings(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Z)V

    if-nez v7, :cond_0

    if-nez v9, :cond_0

    invoke-static {v1, p2, v11, v6}, Lcom/android/camera/backup/CameraBackupHelper;->restoreSettings(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Z)V

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    invoke-static {p1, p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object p0

    invoke-static {v1, p2, p0, v6}, Lcom/android/camera/backup/CameraBackupHelper;->restoreSettings(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private restoreFromVersion3(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;)V
    .locals 9

    const/4 p0, 0x2

    new-array v0, p0, [I

    fill-array-data v0, :array_0

    invoke-static {}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getAvailableCameraIds()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_2

    aget v4, v0, v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v4}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getSharedPreferencesName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v6, v4}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getCloudPrefix(II)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    invoke-static {v8, v6}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object v6

    invoke-static {v7, p2, v6, v2}, Lcom/android/camera/backup/CameraBackupHelper;->restoreSettings(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "camera_settings_global"

    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v0, Lcom/android/camera/backup/CameraSettingsBackupImpl;->PREF_ENTRIES:[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    invoke-static {v0, p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->addPrefixToEntries([Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Ljava/lang/String;)[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Lcom/android/camera/backup/CameraBackupHelper;->restoreSettings(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method


# virtual methods
.method public getCurrentVersion(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public onBackupSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backup version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getCurrentVersion(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingsBackup"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/camera/backup/CameraSettingsBackupImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl$1;-><init>(Lcom/android/camera/backup/CameraSettingsBackupImpl;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->handleBackupOrRestore(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V

    return-void
.end method

.method public onRestoreSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->getCurrentVersion(Landroid/content/Context;)I

    move-result v0

    const-string v1, "CameraSettingsBackup"

    if-le p3, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "skip restore due to cloud version "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is higher than local version "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-gt v0, p3, :cond_1

    new-instance p3, Lcom/android/camera/backup/CameraSettingsBackupImpl$2;

    invoke-direct {p3, p0}, Lcom/android/camera/backup/CameraSettingsBackupImpl$2;-><init>(Lcom/android/camera/backup/CameraSettingsBackupImpl;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->handleBackupOrRestore(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne v0, p3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->restoreFromVersion3(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne v0, p3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/backup/CameraSettingsBackupImpl;->restoreFromVersion1(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;)V

    :cond_3
    :goto_0
    return-void
.end method
