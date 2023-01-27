.class public Lcom/android/camera/data/data/config/ComponentConfigFlash;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigFlash.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final FLASH_VALUE_AUTO:Ljava/lang/String; = "3"

.field public static final FLASH_VALUE_BACK_SOFT_LIGHT:Ljava/lang/String; = "5"

.field public static final FLASH_VALUE_MANUAL_OFF:Ljava/lang/String; = "200"

.field public static final FLASH_VALUE_OFF:Ljava/lang/String; = "0"

.field public static final FLASH_VALUE_ON:Ljava/lang/String; = "1"

.field public static final FLASH_VALUE_SCREEN_LIGHT_AUTO:Ljava/lang/String; = "103"

.field public static final FLASH_VALUE_SCREEN_LIGHT_ON:Ljava/lang/String; = "101"

.field public static final FLASH_VALUE_TORCH:Ljava/lang/String; = "2"


# instance fields
.field private mFlashValuesForSceneMode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBackSoftLightSupported:Z

.field private mIsClosed:Z

.field private mIsHardwareSupported:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mFlashValuesForSceneMode:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object p0

    const/4 v2, 0x1

    aget p0, p0, v2

    const v2, 0x7f110655

    const-string v3, "0"

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createItems(IILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/config/ComponentConfigUltraWide;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/config/ComponentConfigUltraWide;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isFlashSupported()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsHardwareSupported:Z

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/config/DataItemFeature;->isSupportFlashModeBackSoftLight()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isBackSoftLightSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsBackSoftLightSupported:Z

    const/16 v7, 0xa6

    const/16 v8, 0xcc

    const/16 v9, 0xad

    const/16 v10, 0xab

    const/16 v11, 0xb8

    if-eq v1, v7, :cond_4

    if-eq v1, v10, :cond_3

    if-eq v1, v9, :cond_4

    const/16 v4, 0xbb

    if-eq v1, v4, :cond_4

    const/16 v4, 0xbd

    if-eq v1, v4, :cond_4

    if-eq v1, v8, :cond_2

    if-eq v1, v11, :cond_1

    const/16 v4, 0xb9

    if-eq v1, v4, :cond_4

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result v4

    if-ne v4, v5, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v3

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualVideoRecording()Z

    move-result v4

    if-nez v4, :cond_5

    return-object v3

    :cond_3
    iget-boolean v7, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsHardwareSupported:Z

    if-eqz v7, :cond_4

    if-eqz v4, :cond_4

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightRes()[I

    move-result-object v2

    aget v13, v2, v6

    const v14, 0x7f080349

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightRes()[I

    move-result-object v2

    aget v15, v2, v5

    const v16, 0x7f110655

    const-string v17, "0"

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result v5

    const v6, 0x7f080349

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result v7

    const v8, 0x7f110654

    const-string v9, "5"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3

    :cond_4
    :pswitch_0
    if-nez v2, :cond_5

    return-object v3

    :cond_5
    :goto_1
    iget-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsHardwareSupported:Z

    const/4 v7, 0x2

    if-nez v4, :cond_a

    if-ne v2, v5, :cond_9

    invoke-static {}, Lcom/mi/config/Device;->isSupportScreenLight()Z

    move-result v2

    if-eqz v2, :cond_9

    if-ne v1, v9, :cond_6

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->supportSuperNightFrontFlash()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v5

    goto :goto_2

    :cond_6
    move v2, v6

    :goto_2
    const/16 v4, 0xa3

    if-eq v1, v4, :cond_7

    const/16 v4, 0xa5

    if-eq v1, v4, :cond_7

    if-eq v1, v10, :cond_7

    const/16 v4, 0xcd

    if-eq v1, v4, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v4

    aget v13, v4, v6

    const v14, 0x7f08034b

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v4

    aget v15, v4, v5

    const v16, 0x7f110655

    const-string v17, "0"

    move-object v12, v2

    invoke-direct/range {v12 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v4

    aget v19, v4, v6

    const v20, 0x7f080347

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v4

    aget v21, v4, v5

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v4

    aget v22, v4, v6

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v4

    aget v23, v4, v7

    const v24, 0x7f080344

    const v25, 0x7f110653

    const-string v26, "103"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v26}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIIIILjava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v4

    aget v13, v4, v6

    const v14, 0x7f08034d

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v4

    aget v15, v4, v5

    const v16, 0x7f110656

    const-string v17, "101"

    move-object v12, v2

    invoke-direct/range {v12 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-ne v1, v11, :cond_9

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08034b

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f110655

    const-string v12, "0"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v14, v2, v6

    const v15, 0x7f08034d

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v0

    aget v16, v0, v5

    const v17, 0x7f110656

    const-string v18, "101"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v3

    :cond_a
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/mi/config/Device;->isSupportScreenLight()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v13, v2, v6

    const v14, 0x7f08034b

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v15, v2, v5

    const v16, 0x7f110655

    const-string v17, "0"

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v19, v2, v6

    const v20, 0x7f080347

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v21, v2, v5

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v22, v2, v6

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v23, v2, v7

    const v24, 0x7f080344

    const v25, 0x7f110653

    const-string v26, "103"

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v26}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08034d

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v0

    aget v10, v0, v5

    const v11, 0x7f110656

    const-string v12, "101"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3

    :cond_b
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v4

    aget v14, v4, v6

    const v15, 0x7f08034b

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v4

    aget v16, v4, v5

    const v17, 0x7f110655

    const-string v18, "0"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xa1

    if-eq v1, v2, :cond_12

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_12

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_12

    const/16 v2, 0xac

    if-eq v1, v2, :cond_12

    const/16 v2, 0xae

    if-eq v1, v2, :cond_12

    if-eq v1, v8, :cond_12

    const/16 v2, 0xd7

    if-eq v1, v2, :cond_12

    const/16 v2, 0xb3

    if-eq v1, v2, :cond_12

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_12

    const/16 v2, 0xb7

    if-eq v1, v2, :cond_12

    if-eq v1, v11, :cond_f

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v13, v2, v6

    const v14, 0x7f080347

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v15, v2, v5

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v16, v2, v6

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v17, v2, v7

    const v18, 0x7f080344

    const v19, 0x7f110653

    const-string v20, "3"

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08034d

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f110656

    const-string v12, "1"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/mi/config/Device;->isSupportFrontFlash()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08034d

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f110656

    const-string v12, "2"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    invoke-static {}, Lcom/mi/config/Device;->isSupportedTorchCapture()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08034f

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f110657

    const-string v12, "2"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_3
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsBackSoftLightSupported:Z

    if-eqz v1, :cond_13

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result v5

    const v6, 0x7f080349

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result v7

    const v8, 0x7f110654

    const-string v9, "5"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_f
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08034d

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f110656

    const-string v12, "1"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/mi/config/Device;->isSupportFrontFlash()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08034d

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v0

    aget v10, v0, v5

    const v11, 0x7f110656

    const-string v12, "2"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    invoke-static {}, Lcom/mi/config/Device;->isSupportedTorchCapture()Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08034f

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v0

    aget v10, v0, v5

    const v11, 0x7f110657

    const-string v12, "2"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v14, v2, v6

    const v15, 0x7f08034f

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v16, v2, v5

    const v17, 0x7f110657

    const-string v18, "2"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsBackSoftLightSupported:Z

    if-eqz v1, :cond_13

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result v5

    const v6, 0x7f080349

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result v7

    const v8, 0x7f110654

    const-string v9, "5"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_4
    return-object v3

    :pswitch_data_0
    .packed-switch 0xcf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getComponentValueInternal(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_camera_scenemode_setting_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFlashAutoRes()[I
    .locals 0

    const/4 p0, 0x3

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080345
        0x7f080345
        0x7f080343
    .end array-data
.end method

.method private getFlashBackSoftLightRes()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080348
        0x7f080348
    .end array-data
.end method

.method private getFlashBackSoftLightSelectedRes()I
    .locals 0

    const p0, 0x7f080348

    return p0
.end method

.method private getFlashOffRes()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f08034a
        0x7f08034a
    .end array-data
.end method

.method private getFlashOnRes()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f08034c
        0x7f08034c
    .end array-data
.end method

.method private getFlashTorchRes()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f08034e
        0x7f08034e
    .end array-data
.end method


# virtual methods
.method public clearClosed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Z

    return-void
.end method

.method public disableUpdate()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->thermalCloseFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isHardwareSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed()Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValueInternal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "0"

    return-object p0
.end method

.method public getDisableReasonString()I
    .locals 0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f110284

    return p0

    :cond_0
    const p0, 0x7f110283

    return p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f110658

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_3

    const/16 p0, 0xae

    if-eq p1, p0, :cond_3

    const/16 p0, 0xcc

    if-eq p1, p0, :cond_3

    const/16 p0, 0xd7

    if-eq p1, p0, :cond_3

    const/16 p0, 0xab

    if-eq p1, p0, :cond_2

    const/16 p0, 0xac

    if-eq p1, p0, :cond_3

    const/16 p0, 0xb3

    if-eq p1, p0, :cond_3

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_3

    const/16 p0, 0xb7

    if-eq p1, p0, :cond_3

    const/16 p0, 0xb8

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p0, "pref_camera_flashmode_key"

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unspecified flash"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "pref_camera_fun_ar_photo_flashmode_key"

    goto :goto_0

    :cond_1
    const-string p0, "pref_camera_fun_ar_video_flashmode_key"

    :goto_0
    return-object p0

    :cond_2
    const-string p0, "pref_camera_portrait_flashmode_key"

    return-object p0

    :cond_3
    :pswitch_1
    const-string p0, "pref_camera_video_flashmode_key"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object p0

    aget p0, p0, v2

    return p0

    :cond_0
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object p0

    aget p0, p0, v2

    return p0

    :cond_1
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0xab

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsBackSoftLightSupported:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightRes()[I

    move-result-object p0

    aget p0, p0, v2

    return p0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object p0

    aget p0, p0, v2

    return p0

    :cond_3
    const-string p1, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object p0

    aget p0, p0, v2

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object p0

    aget p0, p0, v2

    :goto_0
    return p0

    :cond_5
    const-string p1, "103"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object p0

    aget p0, p0, v2

    return p0

    :cond_6
    const-string p1, "101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object p0

    aget p0, p0, v2

    return p0

    :cond_7
    const-string p1, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result p0

    return p0

    :cond_8
    const/4 p0, -0x1

    return p0
.end method

.method public getValueSelectedShadowDrawable(I)I
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f08034d

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f080347

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v4, 0x7f080349

    if-eqz v1, :cond_3

    const/16 v0, 0xab

    if-ne p1, v0, :cond_2

    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsBackSoftLightSupported:Z

    if-eqz p0, :cond_2

    return v4

    :cond_2
    const p0, 0x7f08034b

    return p0

    :cond_3
    const-string p0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const v2, 0x7f08034f

    :goto_0
    return v2

    :cond_5
    const-string p0, "103"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v3

    :cond_6
    const-string p0, "101"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v2

    :cond_7
    const-string p0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v4

    :cond_8
    const/4 p0, -0x1

    return p0
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f110060

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string p1, "3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v1, 0x7f11005d

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const-string p1, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p0, 0x7f11005f

    return p0

    :cond_2
    const-string p1, "2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0x7f110061

    :goto_0
    return v0

    :cond_4
    const-string p1, "103"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    const-string p1, "101"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    const-string p1, "5"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const p0, 0x7f11005e

    return p0

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method public isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Z

    return p0
.end method

.method public isDisabled(I)Z
    .locals 2

    const/4 p0, 0x1

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFlashSupportedInManualMode()Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0xb8

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return p0

    :cond_1
    const/16 v0, 0xbc

    if-eq p1, v0, :cond_3

    const/16 v0, 0xbd

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    return p0
.end method

.method public isHardwareSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsHardwareSupported:Z

    return p0
.end method

.method public isValidFlashValue(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "^[0-9]+$"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/config/ComponentConfigUltraWide;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->createItems(IILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/config/ComponentConfigUltraWide;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p2, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    return-void
.end method

.method public resetToDefault(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(Z)V

    const/16 v0, 0xa3

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    const/16 v0, 0xab

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    const-string v0, "pref_camera_fun_ar_photo_flashmode_key"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    const-string v0, "pref_camera_fun_ar_video_flashmode_key"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    return-void
.end method

.method public setClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Z

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(Z)V

    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public setSceneModeFlashValue(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mFlashValuesForSceneMode:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
