.class public Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;
.super Ljava/lang/Object;
.source "ConfigInfoThumUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigInfoThumUtil"


# instance fields
.field private final mBeardStyleRegion:[F

.field private final mEarRingShapeRegion:[F

.field private final mEarShapeRegion:[F

.field private final mEyeBrowSharpRegion:[F

.field private final mEyeSharpRegion:[F

.field private mEyeWearList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mEyeWearStyleRegin:[F

.field private final mEyelashStyleRegion:[F

.field private final mFaceSharpRegion:[F

.field private final mFrecklesRegion:[F

.field private mHairList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHairStyleRegion:[F

.field private final mHat:Ljava/lang/String;

.field private final mHatStyleRegion:[F

.field private final mHeadWear:Ljava/lang/String;

.field private final mHeadWearStyleRegion:[F

.field private final mMouthSharpRegion:[F

.field private final mNevusRegion:[F

.field private mNoEyeWear:Z

.field private mNoHair:Z

.field private final mNoseShapeRegion:[F

.field private mTempRegion:[F

.field private final mnNormalRegion:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mHairStyleRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mFaceSharpRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEyeWearStyleRegin:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEyelashStyleRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEyeSharpRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEyeBrowSharpRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoseShapeRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_7

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mMouthSharpRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_8

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mBeardStyleRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_9

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mFrecklesRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_a

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNevusRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_b

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEarShapeRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_c

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEarRingShapeRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_d

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mHatStyleRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_e

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mHeadWearStyleRegion:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_f

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mnNormalRegion:[F

    const-string v1, "Hat"

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mHat:Ljava/lang/String;

    const-string v1, "Hea"

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mHeadWear:Ljava/lang/String;

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoHair:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoEyeWear:Z

    return-void

    :array_0
    .array-data 4
        0x43870000    # 270.0f
        0x43a28000    # 325.0f
        0x41b80000    # 23.0f
        0x42140000    # 37.0f
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x43828000    # 261.0f
        0x439d0000    # 314.0f
        0x420c0000    # 35.0f
        0x42200000    # 40.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x43828000    # 261.0f
        0x439d0000    # 314.0f
        0x420c0000    # 35.0f
        0x42200000    # 40.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x44a34000    # 1306.0f
        0x44c44000    # 1570.0f
        0x43c28000    # 389.0f
        0x44270000    # 668.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x44040000    # 528.0f
        0x441ec000    # 635.0f
        0x43240000    # 164.0f
        0x43510000    # 209.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x44040000    # 528.0f
        0x441ec000    # 635.0f
        0x43240000    # 164.0f
        0x43510000    # 209.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x44384000    # 737.0f
        0x445dc000    # 887.0f
        0x43870000    # 270.0f
        0x43bd0000    # 378.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x4495c000    # 1198.0f
        0x44b44000    # 1442.0f
        0x43f98000    # 499.0f
        0x44440000    # 784.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x44028000    # 522.0f
        0x441d0000    # 628.0f
        0x43200000    # 160.0f
        0x43a30000    # 326.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x44164000    # 601.0f
        0x4434c000    # 723.0f
        0x43490000    # 201.0f
        0x43890000    # 274.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x44164000    # 601.0f
        0x4434c000    # 723.0f
        0x43490000    # 201.0f
        0x43890000    # 274.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x4480e000    # 1031.0f
        0x449b0000    # 1240.0f
        0x43330000    # 179.0f
        0x4407c000    # 543.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x4480e000    # 1031.0f
        0x449b0000    # 1240.0f
        0x44224000    # 649.0f
        0x4407c000    # 543.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x43870000    # 270.0f
        0x43a28000    # 325.0f
        0x41b80000    # 23.0f
        0x41a00000    # 20.0f
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        0x43d30000    # 422.0f
        0x43ff0000    # 510.0f
        0x42c40000    # 98.0f
        0x41700000    # 15.0f
        0x435c0000    # 220.0f
        0x435c0000    # 220.0f
        0x3f4ccccd
    .end array-data

    :array_f
    .array-data 4
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x0
        0x0
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public renderThumb(Lcom/arcsoft/avatar2/AvatarEngine;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;I[F)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoHair:Z

    iput-boolean v3, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoEyeWear:Z

    const-string v4, "ConfigInfoThumUtil"

    if-nez v1, :cond_0

    const-string v0, "mimoji void renderThumb[avatarEngine, info, gender, backColor] avatar null"

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mConfigType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v11, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v11, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configType:I

    const/4 v5, 0x3

    const/16 v6, 0x9

    const/4 v7, 0x1

    if-eq v4, v7, :cond_9

    const/16 v8, 0xc

    if-eq v4, v8, :cond_7

    const/16 v8, 0xe

    if-eq v4, v8, :cond_6

    const/16 v8, 0x10

    if-eq v4, v8, :cond_5

    const/16 v8, 0x12

    if-eq v4, v8, :cond_4

    const/4 v8, 0x7

    if-eq v4, v8, :cond_3

    const/16 v8, 0x8

    if-eq v4, v8, :cond_2

    if-eq v4, v6, :cond_1

    packed-switch v4, :pswitch_data_0

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mnNormalRegion:[F

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    goto/16 :goto_1

    :pswitch_0
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEyeBrowSharpRegion:[F

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    iput-boolean v7, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoEyeWear:Z

    goto :goto_1

    :pswitch_1
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoseShapeRegion:[F

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    iput-boolean v7, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoEyeWear:Z

    goto :goto_1

    :pswitch_2
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mMouthSharpRegion:[F

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    iput-boolean v7, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoEyeWear:Z

    goto :goto_1

    :pswitch_3
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEyeSharpRegion:[F

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    iput-boolean v7, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoEyeWear:Z

    goto :goto_1

    :pswitch_4
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mFaceSharpRegion:[F

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEyeWearStyleRegin:[F

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNevusRegion:[F

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    iput-boolean v7, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoEyeWear:Z

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mFrecklesRegion:[F

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    iput-boolean v7, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoEyeWear:Z

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEyelashStyleRegion:[F

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    iput-boolean v7, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoEyeWear:Z

    goto :goto_1

    :cond_5
    :pswitch_5
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEarRingShapeRegion:[F

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    iput-boolean v7, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoHair:Z

    iput-boolean v7, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoEyeWear:Z

    goto :goto_1

    :cond_6
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mBeardStyleRegion:[F

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    iput-boolean v7, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoEyeWear:Z

    iput-boolean v7, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoHair:Z

    goto :goto_1

    :cond_7
    iget-object v4, v11, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v8, "Hat"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mHatStyleRegion:[F

    goto :goto_0

    :cond_8
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mHeadWearStyleRegion:[F

    :goto_0
    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    goto :goto_1

    :cond_9
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mHairStyleRegion:[F

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    :goto_1
    iget-boolean v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoHair:Z

    if-eqz v4, :cond_b

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mHairList:Ljava/util/ArrayList;

    if-nez v4, :cond_a

    invoke-virtual {v1, v7, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfig(II)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mHairList:Ljava/util/ArrayList;

    :cond_a
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mHairList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mHairList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    invoke-virtual {v1, v4}, Lcom/arcsoft/avatar2/AvatarEngine;->setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    :cond_b
    iget-boolean v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoEyeWear:Z

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEyeWearList:Ljava/util/ArrayList;

    if-nez v4, :cond_c

    invoke-virtual {v1, v6, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfig(II)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEyeWearList:Ljava/util/ArrayList;

    :cond_c
    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEyeWearList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    iget-object v2, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEyeWearList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    :cond_d
    invoke-virtual/range {p1 .. p2}, Lcom/arcsoft/avatar2/AvatarEngine;->setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mTempRegion:[F

    const/4 v2, 0x4

    aget v4, v0, v2

    float-to-int v12, v4

    const/4 v4, 0x5

    aget v4, v0, v4

    float-to-int v13, v4

    mul-int v4, v12, v13

    mul-int/2addr v4, v2

    new-array v14, v4, [B

    aget v2, v0, v3

    float-to-int v2, v2

    aget v3, v0, v7

    float-to-int v3, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    float-to-int v4, v4

    aget v5, v0, v5

    float-to-int v5, v5

    mul-int/lit8 v8, v12, 0x4

    const/4 v6, 0x6

    aget v10, v0, v6

    move-object/from16 v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v14

    move v6, v12

    move v7, v13

    move-object/from16 v9, p4

    invoke-virtual/range {v0 .. v10}, Lcom/arcsoft/avatar2/AvatarEngine;->renderThumb(IIII[BIII[FF)I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iput-object v0, v11, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->thum:Landroid/graphics/Bitmap;

    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public reset(Lcom/arcsoft/avatar2/AvatarEngine;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V
    .locals 7

    if-nez p1, :cond_0

    const-string p0, "ConfigInfoThumUtil"

    const-string p1, "mimoji void reset avatar null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoHair:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/arcsoft/avatar2/util/AvatarConfigUtils;->getCurrentConfigIdWithType(ILcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v2

    :cond_1
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mHairList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget v6, v5, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configID:I

    if-ne v6, v0, :cond_2

    goto :goto_0

    :cond_3
    move-object v5, v1

    :goto_0
    if-eqz v5, :cond_4

    invoke-virtual {p1, v5}, Lcom/arcsoft/avatar2/AvatarEngine;->setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mNoEyeWear:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-static {v0, p2}, Lcom/arcsoft/avatar2/util/AvatarConfigUtils;->getCurrentConfigIdWithType(ILcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)I

    move-result p2

    if-ne p2, v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, p2

    :goto_1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/utils/ConfigInfoThumUtil;->mEyeWearList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    iget v0, p2, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;->configID:I

    if-ne v0, v2, :cond_6

    move-object v1, p2

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {p1, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setConfig(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)I

    :cond_8
    return-void
.end method
