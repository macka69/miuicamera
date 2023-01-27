.class public Lmiuix/util/HapticFeedbackCompat;
.super Ljava/lang/Object;
.source "HapticFeedbackCompat.java"


# static fields
.field private static final PHYSICAL_EMULATION_REASON:Ljava/lang/String; = "USAGE_PHYSICAL_EMULATION"

.field private static final RTP_MIN_VALUE:I = 0x0

.field private static final RTP_V1_MAX_VALUE:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "HapticFeedbackCompat"

.field private static mAvailable:Z

.field private static mCanCheckExtHaptic:Z

.field private static mExtHapticAlways:Z

.field private static mIsSupportHapticWithReason:Z


# instance fields
.field private hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const-string v1, "HapticFeedbackCompat"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const-string p0, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v3

    sput-boolean v3, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    const-string v4, "MIUI Haptic Implementation is not available"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    :goto_0
    sget-boolean v3, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-nez v3, :cond_1

    const-string p0, "linear motor is not supported in this platform."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v3, p1, p2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 p0, 0x2

    :try_start_1
    const-class p1, Lmiui/util/HapticFeedbackUtil;

    const-string p2, "performHapticFeedback"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, p0

    invoke-virtual {p1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string p2, "Not support haptic with reason"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    :goto_1
    :try_start_2
    const-class p1, Lmiui/util/HapticFeedbackUtil;

    const-string p2, "isSupportExtHapticFeedback"

    new-array v1, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    sput-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    :goto_2
    :try_start_3
    const-class p1, Lmiui/util/HapticFeedbackUtil;

    const-string p2, "performExtHapticFeedback"

    new-array p0, p0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p0, v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, p0, v2

    invoke-virtual {p1, p2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    sput-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z

    :goto_3
    return-void
.end method


# virtual methods
.method public isSupportExtHapticFeedback(I)Z
    .locals 2

    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result p0

    return p0

    :cond_0
    if-ltz p1, :cond_1

    const/16 p0, 0xa0

    if-gt p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public performEmulationHaptic(ID)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    const-string v0, "USAGE_PHYSICAL_EMULATION"

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IDLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public performExtHapticFeedback(I)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performExtHapticFeedback(IZ)Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_1

    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p1, p0}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IZ)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public performExtHapticFeedback(Landroid/net/Uri;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/net/Uri;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performExtHapticFeedback(Landroid/net/Uri;Z)Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_1

    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p1, p0}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/net/Uri;Z)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(Landroid/net/Uri;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public performHapticFeedback(I)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(IZ)Z

    move-result p0

    return p0
.end method

.method public performHapticFeedback(IDLjava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IDLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performHapticFeedback(II)Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1, v1, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZI)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public performHapticFeedback(IIZ)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1, p3, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZI)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiui/util/HapticFeedbackUtil;->release()V

    :cond_0
    return-void
.end method

.method public supportKeyboardIntensity()Z
    .locals 1

    const-string p0, "sys.haptic.intensityforkeyboard"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public supportLinearMotor()Z
    .locals 0

    sget-boolean p0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    return p0
.end method

.method public supportLinearMotorWithReason()Z
    .locals 0

    sget-boolean p0, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    return p0
.end method
