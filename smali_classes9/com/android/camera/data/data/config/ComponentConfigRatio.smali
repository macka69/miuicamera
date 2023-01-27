.class public Lcom/android/camera/data/data/config/ComponentConfigRatio;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigRatio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/config/ComponentConfigRatio$CameraRatio;
    }
.end annotation


# static fields
.field public static final RATIO_16X9:Ljava/lang/String; = "16x9"

.field public static final RATIO_1X1:Ljava/lang/String; = "1x1"

.field public static final RATIO_4X3:Ljava/lang/String; = "4x3"

.field public static final RATIO_FULL_16X10:Ljava/lang/String; = "16x10"

.field public static final RATIO_FULL_18X9:Ljava/lang/String; = "18x9"

.field public static final RATIO_FULL_18_7_5X9:Ljava/lang/String; = "18.75x9"

.field public static final RATIO_FULL_195X9:Ljava/lang/String; = "19.5x9"

.field public static final RATIO_FULL_19X9:Ljava/lang/String; = "19x9"

.field public static final RATIO_FULL_20X9:Ljava/lang/String; = "20x9"


# instance fields
.field public final mCurrentScreenRatio:F

.field private mForceValue:Ljava/lang/String;

.field private mSupportDefaultValues:Ljava/util/Map;
    .annotation build Lcom/android/camera/data/data/config/ComponentConfigRatio$CameraRatio;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sSupport16x10:Z

.field private sSupport18_7_5x9:Z

.field private sSupport18x9:Z

.field private sSupport195x9:Z

.field private sSupport19x9:Z

.field private sSupport20x9:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mCurrentScreenRatio:F

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    return-void
.end method

.method private checkFullSize(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    const v1, 0x177d7f

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "20x9"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const/4 p1, 0x1

    if-eqz p0, :cond_2

    return p1

    :cond_2
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p0, v1

    const v1, 0x400e38e4

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_3

    move v0, p1

    :cond_3
    return v0
.end method


# virtual methods
.method public cleanDefaultValues()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    const/16 v1, 0xa5

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-ne v1, p1, :cond_1

    const-string v1, "1x1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "16x9"

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/config/DataItemFeature;->getDefaultRatio(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->checkFullSize(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string v0, "4x3"

    :cond_1
    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f1106d8

    return p0
.end method

.method public getFullSupportRatioValues()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "4x3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/mi/config/Device;->is18x9RatioScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "18x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->support19x9Ratio()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "19x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->support19_5x9Ratio()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "19.5x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->support18_7_5x9Ratio()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "18.75x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->support20x9Ratio()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "20x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->support16x10Ratio()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "16x10"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->reInit(II)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa5

    if-eq p1, p0, :cond_0

    const-string p0, "pref_camera_picturesize_key"

    return-object p0

    :cond_0
    const-string p0, "is_square"

    return-object p0
.end method

.method public getMappingModeByRatio(I)I
    .locals 4

    const/16 v0, 0xa3

    const/16 v1, 0xa5

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->isSquareModule()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xc6aa

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "1x1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method public getNextValue(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPictureSizeRatioString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initSensorRatio(Ljava/util/Map;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Lcom/android/camera/CameraSize;",
            ">;II)V"
        }
    .end annotation

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mi/config/DataItemFeature;->getDefaultRatio(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "16x9"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2, p3}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->reInit(II)V

    return-void
.end method

.method public isSquareModule()Z
    .locals 1

    const/16 v0, 0xa5

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "1x1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reInit(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lcom/mi/config/Device;->is18x9RatioScreen()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    goto :goto_0

    :cond_0
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    :goto_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->support16x10Ratio()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    goto :goto_1

    :cond_1
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    :goto_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->support19_5x9Ratio()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    goto :goto_2

    :cond_2
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    :goto_2
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->support20x9Ratio()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    goto :goto_3

    :cond_3
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    :goto_3
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->support19x9Ratio()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    goto :goto_4

    :cond_4
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    :goto_4
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/DataItemFeature;->support18_7_5x9Ratio()Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    goto :goto_5

    :cond_5
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    :goto_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    const/16 v3, 0xa3

    const-string v4, "4x3"

    if-eq v1, v3, :cond_1a

    const/16 v5, 0xab

    if-eq v1, v5, :cond_13

    const/16 v5, 0xad

    if-eq v1, v5, :cond_1a

    const/16 v5, 0xb6

    if-eq v1, v5, :cond_12

    const/16 v5, 0xcd

    if-eq v1, v5, :cond_12

    const/16 v5, 0xd5

    if-eq v1, v5, :cond_11

    const/16 v5, 0xaf

    if-eq v1, v5, :cond_11

    const/16 v5, 0xb0

    if-eq v1, v5, :cond_12

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f080227

    const v7, 0x7f080227

    const v8, 0x7f080227

    const v9, 0x7f1106d4

    const v10, 0x7f110093

    const-string v11, "4x3"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_6
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v13, 0x7f080227

    const v14, 0x7f080227

    const v15, 0x7f080227

    const v16, 0x7f1106d4

    const v17, 0x7f110093

    const-string v18, "4x3"

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080223

    const v5, 0x7f080223

    const v6, 0x7f080223

    const v7, 0x7f1106d5

    const v8, 0x7f110094

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "18x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_7
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    if-eqz v1, :cond_8

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "19.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_8
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_9

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "19x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_9
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    if-eqz v1, :cond_a

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "20x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_a
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    if-eqz v1, :cond_27

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "16x10"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :pswitch_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_b

    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    :cond_b
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f080227

    const v7, 0x7f080227

    const v8, 0x7f080227

    const v9, 0x7f1106d4

    const v10, 0x7f110093

    const-string v11, "4x3"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v13, 0x7f080223

    const v14, 0x7f080223

    const v15, 0x7f080223

    const v16, 0x7f1106d5

    const v17, 0x7f110094

    const-string v18, "16x9"

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    if-eqz v1, :cond_c

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "18.75x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_c
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_d

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "18x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_d
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    if-eqz v1, :cond_e

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "19.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_e
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_f

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "19x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_f
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    if-eqz v1, :cond_10

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "20x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_10
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    if-eqz v1, :cond_27

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "16x10"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :pswitch_2
    const-string v1, "16x9"

    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080223

    const v5, 0x7f080223

    const v6, 0x7f080223

    const v7, 0x7f1106d5

    const v8, 0x7f110094

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_11
    :pswitch_3
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    goto/16 :goto_6

    :cond_12
    :pswitch_4
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f080227

    const v12, 0x7f080227

    const v13, 0x7f080227

    const v14, 0x7f1106d4

    const v15, 0x7f110093

    const-string v16, "4x3"

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_13
    if-nez p2, :cond_14

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isLegacyHAL3Device()Z

    move-result v1

    if-eqz v1, :cond_14

    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f080227

    const v7, 0x7f080227

    const v8, 0x7f080227

    const v9, 0x7f1106d4

    const v10, 0x7f110093

    const-string v11, "4x3"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_14
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v13, 0x7f080227

    const v14, 0x7f080227

    const v15, 0x7f080227

    const v16, 0x7f1106d4

    const v17, 0x7f110093

    const-string v18, "4x3"

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080223

    const v5, 0x7f080223

    const v6, 0x7f080223

    const v7, 0x7f1106d5

    const v8, 0x7f110094

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    if-eqz v1, :cond_15

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "18.75x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_15
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_16

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "18x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_16
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    if-eqz v1, :cond_17

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "19.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_17
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_18

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "19x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_18
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    if-eqz v1, :cond_19

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "20x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_19
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    if-eqz v1, :cond_27

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "16x10"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_1a
    :goto_6
    :pswitch_5
    if-nez p2, :cond_1c

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn()Z

    move-result v5

    if-eqz v5, :cond_1e

    :cond_1b
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    goto :goto_7

    :cond_1c
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn()Z

    move-result v5

    if-eqz v5, :cond_1e

    :cond_1d
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    :cond_1e
    :goto_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v5

    if-eqz v5, :cond_1f

    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    :cond_1f
    const/16 v4, 0xa5

    if-eq v1, v4, :cond_20

    if-ne v1, v3, :cond_21

    :cond_20
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f080224

    const v7, 0x7f080224

    const v8, 0x7f080224

    const v9, 0x7f1106d3

    const v10, 0x7f110092

    const-string v11, "1x1"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v13, 0x7f080227

    const v14, 0x7f080227

    const v15, 0x7f080227

    const v16, 0x7f1106d4

    const v17, 0x7f110093

    const-string v18, "4x3"

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080223

    const v5, 0x7f080223

    const v6, 0x7f080223

    const v7, 0x7f1106d5

    const v8, 0x7f110094

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    if-eqz v1, :cond_22

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "18.75x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_22
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_23

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "18x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_23
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    if-eqz v1, :cond_24

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "19.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_24
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_25

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "19x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_25
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    if-eqz v1, :cond_26

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "20x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_26
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    if-eqz v1, :cond_27

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f080251

    const v5, 0x7f080251

    const v6, 0x7f080251

    const v7, 0x7f1106d6

    const v8, 0x7f110095

    const-string v9, "16x10"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    :goto_8
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb8
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 3

    const-string v0, "1x1"

    const/16 v1, 0xa5

    if-ne p1, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 p1, 0xa3

    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, v1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, v1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public supportRatioSwitch()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
