.class public Lcom/android/camera/CameraBrightness;
.super Ljava/lang/Object;
.source "CameraBrightness.java"

# interfaces
.implements Lcom/android/camera/CameraBrightnessCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;,
        Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
    }
.end annotation


# static fields
.field private static final SCREEN_AUTO_BRIGHTNESS_RATIO:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "CameraBrightness"


# instance fields
.field private mBrightness:I

.field private mBrightnessMode:I

.field private mCameraBrightnessTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentActivity:Landroid/app/Activity;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFirstFocusChanged:Z

.field private mPaused:Z

.field private mScreenAutoBrightnessRatio:F

.field private mUseDefaultValue:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    iput v0, p0, Lcom/android/camera/CameraBrightness;->mBrightnessMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraBrightness;->mScreenAutoBrightnessRatio:F

    iput-object p1, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/camera/CameraBrightness;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private adjustBrightness()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/config/Device;->adjustScreenLight()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->cancelLastTask()V

    new-instance v0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;

    iget-object v2, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    iget-boolean v4, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    iget-boolean v5, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    iget v6, p0, Lcom/android/camera/CameraBrightness;->mScreenAutoBrightnessRatio:F

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;-><init>(Landroid/app/Activity;Lcom/android/camera/CameraBrightnessCallback;ZZF)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private cancelLastTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustBrightnessInAutoMode(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setTemporaryAutoBrightnessAdjustment(Landroid/hardware/display/DisplayManager;F)V

    iput p1, p0, Lcom/android/camera/CameraBrightness;->mScreenAutoBrightnessRatio:F
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Meet exception when adjustBrightnessInAutoMode(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraBrightness"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getCurrentBrightness()I
    .locals 0

    iget p0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return p0
.end method

.method public getCurrentBrightnessAuto()F
    .locals 0

    iget p0, p0, Lcom/android/camera/CameraBrightness;->mScreenAutoBrightnessRatio:F

    return p0
.end method

.method public getCurrentBrightnessManual()I
    .locals 0

    iget p0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return p0
.end method

.method public getPreviousBrightnessMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera/CameraBrightness;->mBrightnessMode:I

    return p0
.end method

.method public onPause()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause mUseDefaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraBrightness"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraBrightness;->mScreenAutoBrightnessRatio:F

    const-string v0, "CameraBrightness"

    const-string v1, "onResume adjustBrightness"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged hasFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFirstFocusChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraBrightness"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    if-ne v0, p1, :cond_1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    :cond_1
    return-void
.end method

.method public setBrightness(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return-void
.end method

.method public setPreviousBrightnessMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraBrightness;->mBrightnessMode:I

    return-void
.end method
