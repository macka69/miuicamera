.class public Lcom/android/camera/timerburst/TimerBurstController;
.super Ljava/lang/Object;
.source "TimerBurstController.java"

# interfaces
.implements Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;


# static fields
.field public static final SHOT_COUNT_ENLARGE_TIMES:I = 0xa

.field private static final TAG:Ljava/lang/String; = "TimerBurstController"

.field public static final TIME_INTERVAL_ENLARGE_TIMES:I = 0x1

.field public static final shotCount:[I

.field public static final timeInterval:[I


# instance fields
.field private volatile isDecreasedCount:Z

.field private volatile isInTimerBurstShotting:Z

.field private mJpegRotation:I

.field private mOrientation:I

.field private mPictureName:Ljava/lang/String;

.field mTimerBurstBeanSetting:Lcom/android/camera/timerburst/TimerBurstBean;

.field private volatile pendingStopTimerBurst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/timerburst/TimerBurstController;->shotCount:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/timerburst/TimerBurstController;->timeInterval:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x3c
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->isDecreasedCount:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mJpegRotation:I

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mOrientation:I

    new-instance v0, Lcom/android/camera/timerburst/TimerBurstBean;

    invoke-direct {v0}, Lcom/android/camera/timerburst/TimerBurstBean;-><init>()V

    iput-object v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mTimerBurstBeanSetting:Lcom/android/camera/timerburst/TimerBurstBean;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstInterval()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/timerburst/TimerBurstController;->mTimerBurstBeanSetting:Lcom/android/camera/timerburst/TimerBurstBean;

    invoke-virtual {v2, v0}, Lcom/android/camera/timerburst/TimerBurstBean;->setTotalCount(I)V

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mTimerBurstBeanSetting:Lcom/android/camera/timerburst/TimerBurstBean;

    int-to-long v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/timerburst/TimerBurstBean;->setIntervalTimer(J)V

    return-void
.end method

.method public static isSupportTimerBurst(I)Z
    .locals 1

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$currentSeekBarValue$0(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstInterval()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f000b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$currentSeekBarValue$1(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f000a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private resetTimerConfig()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->isDecreasedCount:Z

    iput-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting:Z

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mTimerBurstBeanSetting:Lcom/android/camera/timerburst/TimerBurstBean;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/timerburst/TimerBurstBean;->setTotalCount(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mPictureName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mJpegRotation:I

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mOrientation:I

    return-void
.end method


# virtual methods
.method public currentSeekBarValue(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object p2, Lcom/android/camera/timerburst/TimerBurstController;->timeInterval:[I

    aget v2, p2, v2

    if-gt v2, p3, :cond_0

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget p2, p2, v2

    if-gt p3, p2, :cond_0

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mTimerBurstBeanSetting:Lcom/android/camera/timerburst/TimerBurstBean;

    int-to-long v2, p3

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/timerburst/TimerBurstBean;->setIntervalTimer(J)V

    invoke-static {p3}, Lcom/android/camera/CameraSettings;->setTimerBurstInterval(I)V

    sget-object p0, Lcom/android/camera/timerburst/TimerBurstController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIntervalTimer: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/camera/timerburst/-$$Lambda$TimerBurstController$JOe_ose5ZuNK6O8rlb3i_3gAM1o;

    invoke-direct {p0, p1}, Lcom/android/camera/timerburst/-$$Lambda$TimerBurstController$JOe_ose5ZuNK6O8rlb3i_3gAM1o;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    sget-object p2, Lcom/android/camera/timerburst/TimerBurstController;->shotCount:[I

    aget v2, p2, v2

    if-gt v2, p3, :cond_1

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget p2, p2, v2

    if-gt p3, p2, :cond_1

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mTimerBurstBeanSetting:Lcom/android/camera/timerburst/TimerBurstBean;

    mul-int/lit8 p2, p3, 0xa

    invoke-virtual {p0, p2}, Lcom/android/camera/timerburst/TimerBurstBean;->setTotalCount(I)V

    invoke-static {p3}, Lcom/android/camera/CameraSettings;->setTimerBurstTotalCount(I)V

    sget-object p0, Lcom/android/camera/timerburst/TimerBurstController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTotalCount: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/camera/timerburst/-$$Lambda$TimerBurstController$pnmxQQZeQdyO83cojr11BTAoSXk;

    invoke-direct {p0, p1}, Lcom/android/camera/timerburst/-$$Lambda$TimerBurstController$pnmxQQZeQdyO83cojr11BTAoSXk;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00f1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public decreaseCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mTimerBurstBeanSetting:Lcom/android/camera/timerburst/TimerBurstBean;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/timerburst/TimerBurstBean;->setTotalCount(I)V

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->isDecreasedCount:Z

    :cond_0
    return-void
.end method

.method public getCaptureIndex()I
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->getTotalCount()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getIntervalTimer()J
    .locals 2

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mTimerBurstBeanSetting:Lcom/android/camera/timerburst/TimerBurstBean;

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstBean;->getIntervalTimer()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsDecreasedCount()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/timerburst/TimerBurstController;->isDecreasedCount:Z

    return p0
.end method

.method public getJpegRotation(I)I
    .locals 2

    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mJpegRotation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstController;->mJpegRotation:I

    :cond_0
    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mJpegRotation:I

    return p0
.end method

.method public getOrientation(ZI)I
    .locals 1

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget p1, p0, Lcom/android/camera/timerburst/TimerBurstController;->mOrientation:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iput p2, p0, Lcom/android/camera/timerburst/TimerBurstController;->mOrientation:I

    :cond_1
    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mOrientation:I

    return p0
.end method

.method public getPictureTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mPictureName:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstController;->mPictureName:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mPictureName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimerBurstBean()Lcom/android/camera/timerburst/TimerBurstBean;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mTimerBurstBeanSetting:Lcom/android/camera/timerburst/TimerBurstBean;

    return-object p0
.end method

.method public getTotalCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mTimerBurstBeanSetting:Lcom/android/camera/timerburst/TimerBurstBean;

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstBean;->getTotalCount()I

    move-result p0

    return p0
.end method

.method public isInTimerBurstShotting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mTimerBurstBeanSetting:Lcom/android/camera/timerburst/TimerBurstBean;

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstBean;->getTotalCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPendingStopTimerBurst()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/timerburst/TimerBurstController;->pendingStopTimerBurst:Z

    return p0
.end method

.method public muteTimerConfig()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setTimerBurstEnable(Z)V

    invoke-virtual {p0}, Lcom/android/camera/timerburst/TimerBurstController;->resetTimerRunningData()V

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setTimerBurstTotalCount(I)V

    const/4 p0, 0x5

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setTimerBurstInterval(I)V

    return-void
.end method

.method public resetTimerRunningData()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstController;->mTimerBurstBeanSetting:Lcom/android/camera/timerburst/TimerBurstBean;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/timerburst/TimerBurstBean;->setTotalCount(I)V

    return-void
.end method

.method public setInTimerBurstShotting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/timerburst/TimerBurstController;->pendingStopTimerBurst:Z

    iget-boolean p1, p0, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/timerburst/TimerBurstController;->resetTimerConfig()V

    :cond_0
    return-void
.end method

.method public setPendingStopTimerBurst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/timerburst/TimerBurstController;->pendingStopTimerBurst:Z

    return-void
.end method
