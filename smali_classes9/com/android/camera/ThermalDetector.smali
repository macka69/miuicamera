.class public Lcom/android/camera/ThermalDetector;
.super Ljava/lang/Object;
.source "ThermalDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;,
        Lcom/android/camera/ThermalDetector$InstanceHolder;
    }
.end annotation


# static fields
.field public static ACTION_TEMP_CHANGED:Ljava/lang/String; = "action_temp_state_change"

.field public static EXTRA_TEMP_STAGE:Ljava/lang/String; = "temp_state"

.field public static final STAGE_CLOSE_BOTH:I = 0x3

.field public static final STAGE_CLOSE_FLASH:I = 0x4

.field public static final STAGE_CLOSE_FRONT:I = 0x2

.field public static final STAGE_CLOSE_NIGHT_ALGO:I = 0x5

.field public static final STAGE_CONTRAINT:I = 0x1

.field public static final STAGE_FREE:I = 0x0

.field public static final STAGE_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ThermalDetector"

.field public static TEMP_STAGE_NODE:Ljava/lang/String; = "/sys/class/thermal/thermal_message/temp_state"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsRegister:Z

.field private mListener:Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mTempStage:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    iput-boolean v0, p0, Lcom/android/camera/ThermalDetector;->mIsRegister:Z

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/camera/ThermalDetector;->ACTION_TEMP_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ThermalDetector;->mFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/camera/ThermalDetector$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ThermalDetector$1;-><init>(Lcom/android/camera/ThermalDetector;)V

    iput-object v0, p0, Lcom/android/camera/ThermalDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ThermalDetector$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ThermalDetector;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ThermalDetector;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/camera/ThermalDetector;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/ThermalDetector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ThermalDetector;->onThermalNotification(I)V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/ThermalDetector;
    .locals 1

    invoke-static {}, Lcom/android/camera/ThermalDetector$InstanceHolder;->access$100()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    return-object v0
.end method

.method private ignoreCloseFlash(I)Z
    .locals 1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->disableCloseFlashForThermalDetected()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xaf

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xba

    if-eq p0, v0, :cond_0

    const/16 v0, 0xcd

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onThermalNotification(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThermalNotification stage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ThermalDetector;->mListener:Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;->onThermalNotification(I)V

    :cond_1
    return-void
.end method

.method private static readStageFromFile()I
    .locals 6

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/camera/ThermalDetector;->TEMP_STAGE_NODE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    sget-object v1, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    const-string v2, "readStageFromFile IOException"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v1, 0x0

    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    sget-object v2, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readStageFromFile value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-ltz v0, :cond_1

    const/4 v2, 0x4

    if-gt v0, v2, :cond_1

    return v0

    :cond_1
    return v1

    :catch_1
    move-exception v0

    sget-object v2, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    const-string v3, "failed to readStageFromFile "

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ThermalDetector;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    sget-object p0, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onThermalNotification()V
    .locals 1

    iget v0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    invoke-direct {p0, v0}, Lcom/android/camera/ThermalDetector;->onThermalNotification(I)V

    return-void
.end method

.method public registerReceiver(Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;)V
    .locals 2

    sget-object v0, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/ThermalDetector;->mListener:Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;

    iget-object p1, p0, Lcom/android/camera/ThermalDetector;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ThermalDetector;->mIsRegister:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThermalDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/camera/ThermalDetector;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ThermalDetector;->mIsRegister:Z

    :cond_1
    return-void
.end method

.method public thermalCloseBoth()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public thermalCloseFlash()Z
    .locals 4

    iget v0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    invoke-direct {p0, v0}, Lcom/android/camera/ThermalDetector;->ignoreCloseFlash(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    iget p0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    if-ne p0, v3, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method

.method public thermalCloseFront()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public thermalCloseNightAlgo()Z
    .locals 3

    iget v0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iget p0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    if-gtz p0, :cond_0

    const-string/jumbo p0, "thermalCloseNightAlgo"

    invoke-static {p0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public thermalConstrained()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unregisterReceiver()V
    .locals 2

    sget-object v0, Lcom/android/camera/ThermalDetector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterReceiver"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ThermalDetector;->mListener:Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;

    iget-object v0, p0, Lcom/android/camera/ThermalDetector;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ThermalDetector;->mIsRegister:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ThermalDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ThermalDetector;->mIsRegister:Z

    iput v0, p0, Lcom/android/camera/ThermalDetector;->mTempStage:I

    :cond_1
    return-void
.end method
