.class public Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
.super Ljava/lang/Object;
.source "PaintConditionReferred.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public forceVideoPattern:Z

.field public isFPS960:Z

.field public mScreenOrientation:I
    .annotation build Lcom/android/camera/animation/AnimationDelegate$AnimationResource$ScreenOrientation;
    .end annotation
.end field

.field public mTargetDisplayRect:Landroid/graphics/Rect;

.field public mTargetUiStyle:I

.field public needFocusBack:Z

.field public needSnapButtonAnimation:Z

.field public targetMode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mScreenOrientation:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mScreenOrientation:I

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->configVariables(ILcom/android/camera/CameraIntentManager;)V

    return-void
.end method

.method private constructor <init>(ILcom/android/camera/CameraIntentManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mScreenOrientation:I

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetMode:I

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->configVariables(ILcom/android/camera/CameraIntentManager;)V

    return-void
.end method

.method public static create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
    .locals 1

    new-instance v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;-><init>(I)V

    return-object v0
.end method

.method public static createGlobal(ILcom/android/camera/CameraIntentManager;)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
    .locals 1

    new-instance v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;-><init>(ILcom/android/camera/CameraIntentManager;)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    invoke-direct {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;-><init>()V

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetMode:I

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetMode:I

    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->needSnapButtonAnimation:Z

    iput-boolean v1, v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->needSnapButtonAnimation:Z

    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->isFPS960:Z

    iput-boolean v1, v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->isFPS960:Z

    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->needFocusBack:Z

    iput-boolean v1, v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->needFocusBack:Z

    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    iput-boolean v1, v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetDisplayRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mScreenOrientation:I

    iput p0, v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mScreenOrientation:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->clone()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p0

    return-object p0
.end method

.method public configVariables(ILcom/android/camera/CameraIntentManager;)V
    .locals 8

    const/16 v0, 0xa1

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq p1, v0, :cond_13

    const/16 v0, 0xa2

    const/4 v3, 0x0

    if-eq p1, v0, :cond_10

    const/16 p2, 0xa5

    const/4 v0, 0x4

    if-eq p1, p2, :cond_f

    const/16 p2, 0xac

    if-eq p1, p2, :cond_13

    const/16 p2, 0xae

    if-eq p1, p2, :cond_13

    const/16 p2, 0xbd

    if-eq p1, p2, :cond_13

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_d

    const/16 p2, 0xfe

    if-eq p1, p2, :cond_a

    const/16 p2, 0xa8

    if-eq p1, p2, :cond_13

    const/16 p2, 0xa9

    if-eq p1, p2, :cond_13

    const/16 p2, 0xb3

    if-eq p1, p2, :cond_13

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_13

    const/4 p2, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3fe38e38

    const v6, 0x3faaaaaa

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iput v1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result p1

    cmpl-float v1, p1, v6

    if-nez v1, :cond_1

    iput v3, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto/16 :goto_1

    :cond_1
    cmpl-float v1, p1, v5

    if-nez v1, :cond_2

    iput v2, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto/16 :goto_1

    :cond_2
    cmpl-float p1, p1, v4

    if-nez p1, :cond_3

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto/16 :goto_1

    :cond_3
    iput p2, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v1

    if-eqz v1, :cond_4

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result p1

    cmpl-float v1, p1, v6

    if-nez v1, :cond_5

    iput v3, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_0

    :cond_5
    cmpl-float v1, p1, v5

    if-nez v1, :cond_6

    iput v2, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_0

    :cond_6
    cmpl-float p1, p1, v4

    if-nez p1, :cond_7

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_0

    :cond_7
    iput p2, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->isInMimojiCreate()Z

    move-result p2

    if-eqz p2, :cond_8

    iput-boolean v3, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->getMimojiRecordState()I

    move-result p1

    if-eq p1, v2, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result p1

    if-eqz p1, :cond_15

    :cond_9
    iput-boolean v2, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p1

    if-eq p1, v0, :cond_c

    if-eq p1, v1, :cond_b

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_1

    :cond_b
    iput v2, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_1

    :cond_c
    iput v3, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_1

    :cond_d
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result p1

    if-eqz p1, :cond_e

    iput v3, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_1

    :cond_e
    iput v2, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_1

    :cond_f
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_1

    :cond_10
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_11

    iput v1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_1

    :cond_11
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Lcom/android/camera/CameraIntentManager;->getVideoQuality()I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_12

    invoke-virtual {p2}, Lcom/android/camera/CameraIntentManager;->getVideoQuality()I

    move-result p1

    invoke-static {v3, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    iget p2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {p2, p1}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_1

    :cond_12
    iput v2, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_1

    :cond_13
    :pswitch_1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_14

    iput v1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    goto :goto_1

    :cond_14
    iput v2, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    :cond_15
    :goto_1
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetDisplayRect:Landroid/graphics/Rect;

    return-void

    :pswitch_data_0
    .packed-switch 0xb7
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xcf
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getBottomMaskTargetHeight()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetDisplayRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getLeftMaskWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetDisplayRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getMaskTargetByGravity(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    const v0, 0x800003

    if-eq p1, v0, :cond_3

    const v0, 0x800005

    if-eq p1, v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getBottomMaskTargetHeight()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getTopMaskTargetHeight()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getRightMaskWidth()I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getLeftMaskWidth()I

    move-result p0

    return p0
.end method

.method public getRightMaskWidth()I
    .locals 1

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetDisplayRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getTopMaskTargetHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetDisplayRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public isLandscape()Z
    .locals 2

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mScreenOrientation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public popupSolidPattern()Z
    .locals 4

    invoke-static {}, Lcom/android/camera/Display;->fitDisplayThin()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_4

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    invoke-static {}, Lcom/android/camera/Display;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :cond_4
    iget p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    if-ne p0, v1, :cond_5

    move v2, v3

    :cond_5
    return v2
.end method

.method public setIsFPS960(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->isFPS960:Z

    return-object p0
.end method

.method public setNeedSnapButtonAnimation(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->needSnapButtonAnimation:Z

    return-object p0
.end method

.method public setScreenOrientation(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mScreenOrientation:I

    return-object p0
.end method

.method public setTargetUiStyle(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    return-object p0
.end method

.method public snapSolidPattern()Z
    .locals 5

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mScreenOrientation:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->fitDisplay16_10()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    move v2, v3

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayThin()Z

    move-result v0

    if-eqz v0, :cond_4

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :cond_4
    invoke-static {}, Lcom/android/camera/Display;->fitDisplayFat()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getRightMaskWidth()I

    move-result p0

    if-lez p0, :cond_5

    move v2, v3

    :cond_5
    return v2

    :cond_6
    iget p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    if-eqz p0, :cond_7

    if-ne p0, v1, :cond_8

    :cond_7
    move v2, v3

    :cond_8
    return v2

    :cond_9
    :goto_0
    invoke-static {}, Lcom/android/camera/Display;->fitDisplay16_10()Z

    move-result v0

    if-eqz v0, :cond_b

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mTargetUiStyle:I

    if-ne p0, v1, :cond_a

    move v2, v3

    :cond_a
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->getTopMaskTargetHeight()I

    move-result p0

    if-lez p0, :cond_c

    move v2, v3

    :cond_c
    return v2
.end method
