.class public Lcom/android/camera/fragment/top/ExtraAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExtraAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_MULTI:I = 0x1

.field public static final ITEM_TYPE_TOGGLE:I = 0x2


# instance fields
.field private mAnimateHeight:I

.field private mAnimationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationScaleSize:F

.field private mContext:Landroid/content/Context;

.field private mCurrentRow:I

.field private mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

.field private mDataItemLive:Lcom/android/camera/data/data/extra/DataItemLive;

.field private mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

.field private mDegree:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRowLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideSwitchListener:Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;

.field private mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/data/config/SupportedConfigs;Landroid/view/View$OnClickListener;Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;I)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowLists:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimationList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    iput-object p3, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSlideSwitchListener:Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemLive:Lcom/android/camera/data/data/extra/DataItemLive;

    const p1, 0x7f0703a3

    const p2, 0x3ec28f5c

    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->getResourceFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimationScaleSize:F

    iput p5, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    return-void
.end method

.method private getRow(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    if-nez v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    :cond_1
    sub-int v3, v0, v1

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return v2
.end method

.method private getTotalRow()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    if-nez v2, :cond_1

    move v2, v1

    :cond_1
    sub-int v3, v0, v2

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private setAnimation(Ljava/util/List;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x3e3851ec

    const/4 v2, 0x1

    add-int/lit8 v3, p3, -0x1

    sub-int v4, v3, p2

    int-to-float v4, v4

    const v5, 0x3c23d70a

    mul-float/2addr v5, v4

    sub-float/2addr v1, v5

    const v5, 0x3fae147b

    const v6, 0x3ca3d70a

    mul-float/2addr v4, v6

    sub-float/2addr v5, v4

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimateHeight:I

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x0

    aput v8, v7, v2

    invoke-static {v0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e99999a

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    mul-int/lit8 v1, v3, 0x14

    mul-int/lit8 v4, p2, 0x14

    sub-int/2addr v1, v4

    rsub-int v4, v1, 0x208

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimationList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    mul-int/lit8 v3, v3, 0x32

    mul-int/lit8 v1, p2, 0x32

    sub-int/2addr v3, v1

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimationList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public animationRunning()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimationList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getDegree()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    return p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/SupportedConfigs;->getLength()I

    move-result p0

    return p0
.end method

.method public getItemCount(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemViewType(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result p0

    const/16 p1, 0xad

    if-eq p0, p1, :cond_0

    const/16 p1, 0xae

    if-eq p0, p1, :cond_0

    const/16 p1, 0xb9

    if-eq p0, p1, :cond_0

    const/16 p1, 0xbb

    if-eq p0, p1, :cond_0

    const/16 p1, 0xcc

    if-eq p0, p1, :cond_0

    const/16 p1, 0xd0

    if-eq p0, p1, :cond_0

    const/16 p1, 0xd2

    if-eq p0, p1, :cond_0

    const/16 p1, 0xd5

    if-eq p0, p1, :cond_0

    const/16 p1, 0xe2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getMuitiContentDescriptionString(I)I
    .locals 0
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result p0

    const/16 p1, 0xad

    if-eq p0, p1, :cond_5

    const/16 p1, 0xae

    if-eq p0, p1, :cond_4

    const/16 p1, 0xb9

    if-eq p0, p1, :cond_3

    const/16 p1, 0xbb

    if-eq p0, p1, :cond_2

    const/16 p1, 0xcc

    if-eq p0, p1, :cond_4

    const/16 p1, 0xd0

    if-eq p0, p1, :cond_2

    const/16 p1, 0xd2

    if-eq p0, p1, :cond_1

    const/16 p1, 0xd5

    if-eq p0, p1, :cond_5

    const/16 p1, 0xe2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f1105fd

    return p0

    :cond_1
    const p0, 0x7f1106d8

    return p0

    :cond_2
    const p0, 0x7f1107e5

    return p0

    :cond_3
    const p0, 0x7f1106eb

    return p0

    :cond_4
    const p0, 0x7f1107d4

    return p0

    :cond_5
    const p0, 0x7f1107ee

    return p0
.end method

.method public getTotalRow(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v2, p1, :cond_5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    move v3, p1

    move v2, v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemViewType(I)I

    move-result v4

    if-ne v4, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-ne v3, p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ne v0, v4, :cond_3

    move v3, v2

    goto :goto_2

    :cond_1
    if-ne v3, p1, :cond_2

    move v3, v2

    :cond_2
    sub-int v4, v0, v3

    rem-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    sub-int v1, v2, v3

    :cond_5
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v3, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result v3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v4

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v13, v8

    move v5, v9

    move v10, v5

    move v12, v10

    :goto_0
    move v15, v12

    move/from16 v16, v15

    const/4 v4, 0x0

    :goto_1
    const/4 v11, 0x0

    const/4 v14, -0x1

    goto/16 :goto_14

    :sswitch_0
    const v4, 0x7f080269

    const v10, 0x7f100022

    const v11, 0x7f110875

    iget-object v12, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v13, "pref_speech_shutter"

    invoke-virtual {v12, v13}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v12

    goto/16 :goto_7

    :sswitch_1
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result v12

    const v4, 0x7f0803e0

    const v10, 0x7f100018

    const v11, 0x7f11055f

    goto/16 :goto_7

    :sswitch_2
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v12

    const v4, 0x7f0803e6

    const v10, 0x7f10001b

    const v11, 0x7f11043c

    goto/16 :goto_7

    :sswitch_3
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v10, "pref_camera_exposure_feedback"

    invoke-virtual {v4, v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v12

    const v4, 0x7f08024a

    const v10, 0x7f100013

    const v11, 0x7f1105d6

    goto/16 :goto_7

    :sswitch_4
    iget-object v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMacroMode()Lcom/android/camera/data/data/config/ComponentRunningMacroMode;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isSwitchOn(I)Z

    move-result v12

    const v4, 0x7f080411

    const v11, 0x7f10001c

    invoke-virtual {v10}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getResText()I

    move-result v10

    goto/16 :goto_c

    :sswitch_5
    iget-object v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAutoZoom()Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->isSwitchOn(I)Z

    move-result v12

    const v4, 0x7f0803c9

    const v11, 0x7f10000f

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->getResText()I

    move-result v10

    goto/16 :goto_c

    :sswitch_6
    const v4, 0x7f080254

    const v10, 0x7f100017

    const v11, 0x7f1103cd

    iget-object v12, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v13, "pref_hand_gesture"

    invoke-virtual {v12, v13}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v12

    goto/16 :goto_7

    :sswitch_7
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v12

    const v4, 0x7f0803d6

    const v10, 0x7f100011

    const v11, 0x7f110504

    goto/16 :goto_7

    :sswitch_8
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f080235

    const v11, 0x7f11077e

    const v10, 0x7f100015

    move v13, v8

    move v5, v9

    move v15, v5

    move/from16 v16, v15

    move v12, v10

    move v14, v11

    const/4 v11, 0x0

    goto/16 :goto_a

    :sswitch_9
    const v11, 0x7f1106d2

    iget-object v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRaw()Lcom/android/camera/data/data/config/ComponentConfigRaw;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/camera/data/data/config/ComponentConfigRaw;->isSwitchOn(I)Z

    move-result v12

    const v4, 0x7f080399

    goto/16 :goto_e

    :sswitch_a
    const v4, 0x7f08024d

    const v11, 0x7f1107f3

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastMotionModule()Z

    move-result v12

    goto/16 :goto_e

    :sswitch_b
    const v4, 0x7f0803e2

    const v10, 0x7f100016

    const v11, 0x7f1102ba

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v12

    goto/16 :goto_7

    :sswitch_c
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v4

    const/16 v10, 0xa0

    invoke-virtual {v4, v10}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->isSwitchOn(I)Z

    move-result v12

    const v11, 0x7f1102bc

    const v4, 0x7f0803e4

    const v10, 0x7f100024

    goto/16 :goto_7

    :sswitch_d
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isEnabled(I)Z

    move-result v12

    invoke-virtual {v10, v12}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->getResIcon(Z)I

    move-result v4

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->getDisplayTitleString()I

    move-result v11

    goto/16 :goto_e

    :sswitch_e
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v4

    goto/16 :goto_10

    :sswitch_f
    const v4, 0x7f0803df

    const v11, 0x7f1102b8

    move v10, v4

    move v13, v8

    move v5, v9

    move v12, v5

    move v15, v12

    move/from16 v16, v15

    move v14, v11

    goto/16 :goto_d

    :sswitch_10
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v4

    const v11, 0x7f110133

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v10

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v12

    if-eq v12, v10, :cond_2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v12

    if-ne v12, v10, :cond_1

    goto :goto_2

    :cond_1
    move v10, v9

    goto :goto_3

    :cond_2
    :goto_2
    move v10, v8

    :goto_3
    if-eqz v10, :cond_3

    iget-object v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setAIWatermarkEnable(Z)V

    move v10, v9

    goto :goto_4

    :cond_3
    move v10, v8

    :goto_4
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v12

    const v4, 0x7f0801f0

    move v5, v9

    move/from16 v16, v5

    move v13, v10

    move v14, v11

    move v15, v12

    const/4 v11, 0x0

    move v10, v4

    move/from16 v12, v16

    goto/16 :goto_b

    :sswitch_11
    iget-object v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->isSwitchOn(I)Z

    move-result v12

    const v4, 0x7f080173

    const v11, 0x7f11076c

    goto/16 :goto_e

    :sswitch_12
    iget-object v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSubtitle()Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->isSwitchOn(I)Z

    move-result v12

    const v4, 0x7f0803e3

    const v11, 0x7f100023

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/ComponentRunningSubtitle;->getResText()I

    move-result v10

    goto/16 :goto_c

    :sswitch_13
    const v11, 0x7f1106f0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    const-string v10, "pref_camera_referenceline_key"

    invoke-virtual {v4, v10, v9}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    const-string v10, "pref_camera_referenceline_type_key"

    const-string v13, "jiugongge"

    invoke-virtual {v4, v10, v13}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v14, 0x3

    sparse-switch v10, :sswitch_data_1

    goto :goto_5

    :sswitch_14
    const-string v10, "left_golden_spiral"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    goto :goto_6

    :sswitch_15
    const-string v10, "right_golden_spiral"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v14

    goto :goto_6

    :sswitch_16
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v9

    goto :goto_6

    :sswitch_17
    const-string v10, "golden_section"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v8

    goto :goto_6

    :cond_4
    :goto_5
    const/4 v4, -0x1

    :goto_6
    if-eqz v4, :cond_8

    if-eq v4, v8, :cond_7

    if-eq v4, v6, :cond_6

    if-eq v4, v14, :cond_5

    move v4, v9

    move v10, v4

    goto/16 :goto_13

    :cond_5
    const v4, 0x7f080429

    const v10, 0x7f100021

    goto/16 :goto_13

    :cond_6
    const v4, 0x7f080402

    const v10, 0x7f100020

    goto/16 :goto_13

    :cond_7
    const v4, 0x7f0803fd

    const v10, 0x7f10001e

    goto/16 :goto_13

    :cond_8
    const v4, 0x7f080425

    const v10, 0x7f10001f

    goto/16 :goto_13

    :sswitch_18
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotionQuality()Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    move-result-object v4

    goto/16 :goto_10

    :sswitch_19
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v4

    move v5, v8

    move v13, v5

    move v10, v9

    goto/16 :goto_11

    :sswitch_1a
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getMenuDrawable()I

    move-result v10

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getMenuString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v12

    move-object v11, v4

    move v13, v8

    move v5, v9

    move/from16 v16, v5

    move v15, v12

    const/4 v4, 0x0

    const/4 v14, -0x1

    goto/16 :goto_f

    :sswitch_1b
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    move-result-object v4

    goto/16 :goto_10

    :sswitch_1c
    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveShotOn()Z

    move-result v12

    const v4, 0x7f080418

    const v10, 0x7f10001d

    const v11, 0x7f11020d

    goto :goto_7

    :sswitch_1d
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v4

    goto/16 :goto_10

    :sswitch_1e
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string v10, "pref_camera_peak_key"

    invoke-virtual {v4, v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v12

    const v4, 0x7f08024e

    const v10, 0x7f100014

    const v11, 0x7f1105d7

    goto :goto_7

    :sswitch_1f
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemLive:Lcom/android/camera/data/data/extra/DataItemLive;

    invoke-virtual {v4}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    move-result-object v4

    goto/16 :goto_10

    :sswitch_20
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemLive:Lcom/android/camera/data/data/extra/DataItemLive;

    invoke-virtual {v4}, Lcom/android/camera/data/data/extra/DataItemLive;->getmComponentLiveReferenceLine()Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;

    move-result-object v4

    goto/16 :goto_10

    :sswitch_21
    const v4, 0x7f080419

    move v10, v4

    move v13, v8

    move v5, v9

    move v12, v5

    goto/16 :goto_0

    :sswitch_22
    const v4, 0x7f0803d4

    const v10, 0x7f100010

    const v11, 0x7f11021c

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCenterMarkOn()Z

    move-result v12

    goto :goto_7

    :sswitch_23
    iget-object v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioSingle()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioSingle;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioSingle;->isSwitchOn(I)Z

    move-result v12

    const v4, 0x7f0803de

    const v11, 0x7f10000e

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioSingle;->getResText()I

    move-result v10

    goto :goto_c

    :sswitch_24
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result v12

    const v4, 0x7f080249

    const v10, 0x7f100012

    const v11, 0x7f110607

    :goto_7
    move v13, v8

    move v5, v9

    move/from16 v16, v5

    :goto_8
    move v14, v11

    move v15, v12

    const/4 v11, 0x0

    :goto_9
    move v12, v10

    :goto_a
    move v10, v4

    :goto_b
    const/4 v4, 0x0

    goto/16 :goto_14

    :sswitch_25
    iget-object v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiAudioNew()Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->isSwitchOn(I)Z

    move-result v12

    const v4, 0x7f0803dd

    const v11, 0x7f10000d

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudioNew;->getResText()I

    move-result v10

    :goto_c
    move v13, v8

    move v5, v9

    move/from16 v16, v5

    move v14, v10

    move v15, v12

    move v10, v4

    move v12, v11

    :goto_d
    const/4 v4, 0x0

    const/4 v11, 0x0

    goto/16 :goto_14

    :sswitch_26
    iget-object v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAiEnhancedVideo()Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;->isSwitchOn(I)Z

    move-result v12

    const v4, 0x7f080410

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;->getResText()I

    move-result v11

    :goto_e
    move v10, v4

    move v13, v8

    move v5, v9

    move/from16 v16, v5

    move v14, v11

    move v15, v12

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_f
    move/from16 v12, v16

    goto/16 :goto_14

    :sswitch_27
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubFps()Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    move-result-object v4

    goto :goto_10

    :sswitch_28
    iget-object v4, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigVideoSubQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    move-result-object v4

    :goto_10
    move v13, v8

    move v5, v9

    move v10, v5

    :goto_11
    move v12, v10

    move v15, v12

    move/from16 v16, v15

    goto/16 :goto_1

    :sswitch_29
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTimerBurstEnable()Z

    move-result v12

    const v4, 0x7f0808a9

    const v10, 0x7f100025

    if-eqz v12, :cond_a

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v11

    iget-object v13, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f001c

    invoke-virtual {v13, v14, v11}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    new-array v14, v8, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v9

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v13

    const-string v14, "S"

    if-eqz v13, :cond_9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstInterval()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_12

    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstInterval()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_12
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move v13, v8

    move/from16 v16, v13

    move v5, v9

    move v15, v12

    const/4 v14, -0x1

    goto/16 :goto_9

    :cond_a
    const v11, 0x7f1108d7

    :goto_13
    move v13, v8

    move/from16 v16, v13

    move v5, v9

    goto/16 :goto_8

    :goto_14
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemViewType(I)I

    move-result v6

    if-ne v6, v8, :cond_b

    invoke-virtual {v4}, Lcom/android/camera/data/data/ComponentData;->disableUpdate()Z

    move-result v6

    xor-int/2addr v6, v8

    const v7, 0x7f0a03d7

    invoke-virtual {v1, v7}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/SlideSwitchButton;

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/camera/ui/SlideSwitchButton;->setComponentData(Lcom/android/camera/data/data/ComponentData;IZ)V

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v3, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSlideSwitchListener:Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/SlideSwitchButton;->setSlideSwitchListener(Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/top/ExtraAdapter;->getMuitiContentDescriptionString(I)I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    :cond_b
    const v2, 0x7f0a0152

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a0151

    invoke-virtual {v1, v4}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorCircleBackgroundView;

    const v5, 0x7f0a0150

    invoke-virtual {v1, v5}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    const v6, 0x7f0a0333

    invoke-virtual {v1, v6}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a0153

    invoke-virtual {v1, v7}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    const v8, 0x7f0a01dc

    invoke-virtual {v1, v8}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    move/from16 v19, v10

    const/4 v10, -0x1

    if-eq v14, v10, :cond_c

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(I)V

    goto :goto_15

    :cond_c
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    const-string v10, ","

    if-eqz v16, :cond_12

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_d
    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v7, 0xaa

    if-ne v3, v7, :cond_f

    if-eqz v15, :cond_e

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v7

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstInterval()I

    move-result v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f1100c3

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v5

    const/4 v14, 0x1

    new-array v5, v14, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v17, 0x0

    aput-object v18, v5, v17

    const v14, 0x7f0f000a

    invoke-virtual {v9, v14, v7, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0f000b

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v17

    invoke-virtual {v9, v5, v8, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_16

    :cond_e
    move-object/from16 v16, v5

    const v5, 0x7f1100c2

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_16
    const v5, 0x7f1100c4

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_18

    :cond_f
    move-object/from16 v16, v5

    const/16 v5, 0xdb

    if-ne v3, v5, :cond_11

    if-nez v15, :cond_10

    const v5, 0x7f1100a8

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_10
    const v5, 0x7f1100a7

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_17
    const v5, 0x7f1100a9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_11
    :goto_18
    const/4 v8, 0x1

    goto :goto_1a

    :cond_12
    move-object/from16 v16, v5

    const/16 v5, 0x8

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_13

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f11008e

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_13
    const/16 v7, 0xe1

    if-eq v3, v7, :cond_14

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f110041

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    :goto_19
    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_15
    const/4 v8, 0x1

    iget-object v5, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1a
    if-eqz v15, :cond_16

    invoke-virtual {v4}, Lcom/android/camera/ui/ColorCircleBackgroundView;->isSwitchOn()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_16

    if-eqz v12, :cond_16

    goto :goto_1b

    :cond_16
    const/4 v8, 0x0

    :goto_1b
    invoke-static {v2}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v15, v1}, Lcom/android/camera/ui/ColorCircleBackgroundView;->setSwitchOn(ZZ)V

    if-eqz v15, :cond_18

    if-nez v8, :cond_17

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    move-object/from16 v5, v16

    move/from16 v4, v19

    invoke-virtual {v5, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1c

    :cond_17
    move-object/from16 v5, v16

    goto :goto_1c

    :cond_18
    move-object/from16 v5, v16

    move/from16 v4, v19

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    invoke-virtual {v5, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_1c
    if-eqz v8, :cond_19

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimationScaleSize:F

    invoke-virtual {v5, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    invoke-virtual {v5, v12}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_19
    :goto_1d
    return-void

    :sswitch_data_0
    .sparse-switch
        0xaa -> :sswitch_29
        0xad -> :sswitch_28
        0xae -> :sswitch_27
        0xaf -> :sswitch_26
        0xb2 -> :sswitch_25
        0xb5 -> :sswitch_24
        0xb6 -> :sswitch_23
        0xb7 -> :sswitch_22
        0xb8 -> :sswitch_21
        0xb9 -> :sswitch_20
        0xbb -> :sswitch_1f
        0xc7 -> :sswitch_1e
        0xcc -> :sswitch_1d
        0xce -> :sswitch_1c
        0xd0 -> :sswitch_1b
        0xd1 -> :sswitch_1a
        0xd2 -> :sswitch_19
        0xd5 -> :sswitch_18
        0xdb -> :sswitch_13
        0xdc -> :sswitch_12
        0xdd -> :sswitch_11
        0xdf -> :sswitch_10
        0xe1 -> :sswitch_f
        0xe2 -> :sswitch_e
        0xe3 -> :sswitch_d
        0xe4 -> :sswitch_c
        0xe5 -> :sswitch_b
        0xe9 -> :sswitch_a
        0xed -> :sswitch_9
        0xf2 -> :sswitch_8
        0xfb -> :sswitch_7
        0xfc -> :sswitch_6
        0xfd -> :sswitch_5
        0xff -> :sswitch_4
        0x102 -> :sswitch_3
        0x104 -> :sswitch_2
        0x105 -> :sswitch_1
        0x106 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x344bfe51 -> :sswitch_17
        -0x1d02a42b -> :sswitch_16
        -0x124245fc -> :sswitch_15
        0x411c60af -> :sswitch_14
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a7

    invoke-virtual {p2, v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a8

    invoke-virtual {p2, v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/ExtraAdapter;->onViewAttachedToWindow(Lcom/android/camera/fragment/CommonRecyclerViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/camera/fragment/CommonRecyclerViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimateHeight:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getTotalRow()I

    move-result v0

    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    if-ne v1, v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/ExtraAdapter;->getRow(I)I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    if-le v1, v2, :cond_4

    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowLists:Ljava/util/List;

    invoke-direct {p0, v3, v2, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->setAnimation(Ljava/util/List;II)V

    :cond_3
    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowLists:Ljava/util/List;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowLists:Ljava/util/List;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExtraAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mRowLists:Ljava/util/List;

    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    invoke-direct {p0, p1, v1, v0}, Lcom/android/camera/fragment/top/ExtraAdapter;->setAnimation(Ljava/util/List;II)V

    iget p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mCurrentRow:I

    :cond_6
    return-void
.end method

.method public setAnimateHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mAnimateHeight:I

    return-void
.end method

.method public setDegree(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    return-void
.end method
