.class public Lcom/android/camera/CameraAppImpl;
.super Landroid/app/Application;
.source "CameraAppImpl.java"


# static fields
.field private static sContext:Landroid/content/Context;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivities:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mIsVideoCastActivityResumed:Z

.field private mMainIntentActivityLaunched:Z

.field private mRestoreSetting:Z

.field private sLaunched:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-class v0, Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mRestoreSetting:Z

    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mMainIntentActivityLaunched:Z

    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mIsVideoCastActivityResumed:Z

    return-void
.end method

.method public static getAndroidContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/camera/CameraAppImpl;->sContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mMainIntentActivityLaunched:Z

    :cond_1
    iget-object p0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    sput-object p0, Lcom/android/camera/CameraAppImpl;->sContext:Landroid/content/Context;

    const-string p1, "camera.db"

    invoke-virtual {p0, p1}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Application;->deleteDatabase(Ljava/lang/String;)Z

    :cond_0
    const-string p1, "rx2.purge-period-seconds"

    const-string v0, "3600"

    invoke-static {p1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->checkSelf()V

    sget-object p1, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    const-string v0, "avenger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "com.android.camera"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_1
    invoke-static {}, Lcom/android/camera2/vendortag/struct/MarshalQueryableRegister;->preload()V

    invoke-static {}, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->preload()V

    invoke-static {}, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->preload()V

    invoke-static {}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->preload()V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->supportAlgoUpOnCreation()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->parallelMaxAcquireCount()I

    move-result p1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->parallelMaxDequeueCount()I

    move-result v0

    const-wide/32 v1, 0x40000000

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v3

    div-long/2addr v3, v1

    const-wide/16 v1, 0x6

    cmp-long v1, v3, v1

    if-lez v1, :cond_2

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/DataItemFeature;->parallelMaxAcquireCount8G()I

    move-result p1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->parallelMaxDequeueCount8G()I

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "totalMemory:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "G, maxAcquireCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxDequeueCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->init(II)V

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/parallel/AlgoConnector;->startService(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Lcom/android/camera/CrashHandler;->getInstance()Lcom/android/camera/CrashHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/CrashHandler;->init(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/android/camera/network/util/NetworkUtils;->bind(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/miui/filtersdk/BeautificationSDK;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/camera/upgrade/UpgradeManager;->migrateForUpgrade(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/camera/external/mivi/MIVIHelper;->requestCloudDataAsync()V

    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->init(Landroid/content/Context;)V

    return-void
.end method

.method public closeAllActivitiesBut(Landroid/app/Activity;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CameraAppImpl;->getActivityCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraAppImpl;->getActivity(I)Landroid/app/Activity;

    move-result-object v2

    if-eq v2, p1, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    iget-object v3, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public containsResumedCameraInStack()Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    instance-of v3, v2, Lcom/android/camera/Camera;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getActivity(I)Landroid/app/Activity;
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CameraAppImpl;->getActivityCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivityCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result p0

    return p0
.end method

.method public isApplicationFirstLaunched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public isMainIntentActivityLaunched()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/CameraAppImpl;->mMainIntentActivityLaunched:Z

    return p0
.end method

.method public isNeedRestore()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/CameraAppImpl;->mRestoreSetting:Z

    return p0
.end method

.method public isVideoCastActivityResumed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/CameraAppImpl;->mIsVideoCastActivityResumed:Z

    return p0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaomi.camera.action.VIDEO_CAST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/CameraAppImpl;->mIsVideoCastActivityResumed:Z

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaomi.camera.action.VIDEO_CAST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/CameraAppImpl;->mIsVideoCastActivityResumed:Z

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/android/camera/ApplicationInit;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    new-instance v1, Lcom/android/camera/CameraAppImpl$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraAppImpl$1;-><init>(Lcom/android/camera/CameraAppImpl;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->TrackInit(Landroid/content/Context;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mRestoreSetting:Z

    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mMainIntentActivityLaunched:Z

    :cond_1
    iget-object p0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetRestoreFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mRestoreSetting:Z

    return-void
.end method
