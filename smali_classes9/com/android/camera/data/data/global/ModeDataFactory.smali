.class public Lcom/android/camera/data/data/global/ModeDataFactory;
.super Ljava/lang/Object;
.source "ModeDataFactory.java"


# static fields
.field private static volatile singleton:Lcom/android/camera/data/data/global/ModeDataFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/camera/data/data/global/ModeDataFactory;
    .locals 2

    sget-object v0, Lcom/android/camera/data/data/global/ModeDataFactory;->singleton:Lcom/android/camera/data/data/global/ModeDataFactory;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/camera/data/data/global/ModeDataFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/data/data/global/ModeDataFactory;->singleton:Lcom/android/camera/data/data/global/ModeDataFactory;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/data/data/global/ModeDataFactory;

    invoke-direct {v1}, Lcom/android/camera/data/data/global/ModeDataFactory;-><init>()V

    sput-object v1, Lcom/android/camera/data/data/global/ModeDataFactory;->singleton:Lcom/android/camera/data/data/global/ModeDataFactory;

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
    sget-object v0, Lcom/android/camera/data/data/global/ModeDataFactory;->singleton:Lcom/android/camera/data/data/global/ModeDataFactory;

    return-object v0
.end method

.method private ultraPixelModuleName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    sget-boolean v0, Lcom/mi/config/Device;->IS_G7ACN:Z

    const v1, 0x7f1104fb

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/config/Device;->isG7A48M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->moduleNamePixel()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0x7f1104fa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const v0, 0x7f1104fd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const v0, 0x7f1104fc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createModeData(I)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa6

    if-eq p1, v2, :cond_a

    const/16 v2, 0xa7

    if-eq p1, v2, :cond_9

    const/16 v2, 0xa9

    if-eq p1, v2, :cond_8

    const/16 v2, 0xd6

    if-eq p1, v2, :cond_7

    const/16 v2, 0xb7

    if-eq p1, v2, :cond_6

    const/16 v2, 0xb8

    if-eq p1, v2, :cond_5

    const/16 v2, 0xcc

    if-eq p1, v2, :cond_3

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_2

    const/16 v0, 0xfe

    const/4 v2, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xff

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unSupport mode."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f080330

    const v0, 0x7f080830

    const v2, 0x7f110574

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f08031a

    const v0, 0x7f08082b

    const v2, 0x7f1104ec

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f080331

    const v0, 0x7f08083a

    const v2, 0x7f110503

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f08032c

    const v0, 0x7f080839

    const v2, 0x7f110501

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f080318

    const v0, 0x7f08082a

    const v2, 0x7f110550

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f08031b

    const v0, 0x7f08082c

    const v2, 0x7f11076c

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :pswitch_6
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelIcon()I

    move-result v0

    const v2, 0x7f080835

    invoke-direct {p0}, Lcom/android/camera/data/data/global/ModeDataFactory;->ultraPixelModuleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, v0, v2, p0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-object p1

    :pswitch_7
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f08032b

    const v0, 0x7f080838

    const v2, 0x7f1104f8

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f080329

    const v0, 0x7f080836

    const v2, 0x7f1104fe

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f080319

    const v0, 0x7f1104eb

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f08032f

    const v0, 0x7f110502

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f08031d

    const v0, 0x7f08082e

    const v2, 0x7f1104ed

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f1104f6

    invoke-direct {p0, v1, v2, v2, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f080323

    const v0, 0x7f080829

    const v2, 0x7f110133

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f08031c

    const v2, 0x7f08082d

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isSupportDualVideoCameraChoose()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f1104f7

    goto :goto_0

    :cond_4
    const v0, 0x7f11076d

    :goto_0
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f080322

    const v0, 0x7f080832

    const v2, 0x7f1104f4

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :cond_6
    :pswitch_b
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f080320

    const v0, 0x7f080831

    const v2, 0x7f1104f3

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :cond_7
    :pswitch_c
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f080324

    const v0, 0x7f080833

    const v2, 0x7f1106f9

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :cond_8
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f08032d

    const v0, 0x7f08082f

    const v2, 0x7f1107f3

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :cond_9
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f08032a

    const v0, 0x7f080837

    const v2, 0x7f1104ff

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    :cond_a
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f080325

    const v0, 0x7f080834

    const v2, 0x7f1104f9

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xab
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_b
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xba
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
