.class public Lcom/android/camera/data/observeable/VMFeature;
.super Lcom/android/camera/data/observeable/VMBase;
.source "VMFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/observeable/VMFeature$FeatureModule;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_INSTALL:I = 0x102

.field public static final ERROR_CODE_NETWORK:I = 0x101

.field public static final SCOPE_DOWNLOADING_PROGRESS:I = 0x1000

.field public static final SCOPE_ERROR:I = 0x100

.field public static final SCOPE_NORMAL_STATE:I = 0x10

.field public static final STATE_CANCELLED:I = 0x12

.field public static final STATE_INSTALL_ALL_READY:I = 0x16

.field public static final STATE_INSTALL_OK:I = 0x15

.field public static final STATE_PENDING_DOWNLOAD:I = 0x11

.field public static final STATE_PENDING_INSTALL:I = 0x13

.field public static final STATE_START_INSTALL:I = 0x14


# instance fields
.field public mRxLoadingState:Lcom/android/camera/data/observeable/RxData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/data/observeable/RxData<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/data/observeable/VMBase;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/android/camera/data/observeable/RxData;

    invoke-direct {v1, v0}, Lcom/android/camera/data/observeable/RxData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/data/observeable/VMFeature;->mRxLoadingState:Lcom/android/camera/data/observeable/RxData;

    return-void
.end method

.method public static final getDownloadingProgress(I)I
    .locals 0
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
        to = 0x64L
    .end annotation

    add-int/lit16 p0, p0, -0x1000

    return p0
.end method

.method public static final getFeatureNameByLocalMode(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/camera/data/observeable/VMFeature$FeatureModule;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getLocalModeByFeatureName(Ljava/lang/String;)I
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/observeable/VMFeature$FeatureModule;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "ambilight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "movielens"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "videosky"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_3
    const-string v0, "panorama"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "document"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "vlog2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "clone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "milive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "mimojifu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_9
    const-string v0, "mimojias"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_a
    const-string/jumbo v0, "supernight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v1

    :goto_1
    const/16 v0, 0xb8

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Lcom/mi/config/Device;->isG7()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDynamicFeature()Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 p0, 0xad

    return p0

    :pswitch_1
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDynamicFeature()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const/16 p0, 0xd3

    return p0

    :pswitch_2
    const/16 p0, 0xd7

    return p0

    :pswitch_3
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDynamicFeature()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    const/16 p0, 0xbb

    return p0

    :pswitch_4
    return v0

    :pswitch_5
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDynamicFeature()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    return v0

    :pswitch_6
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDynamicFeature()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    const/16 p0, 0xd2

    return p0

    :pswitch_7
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDynamicFeature()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDocumentMode2()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0xba

    return p0

    :pswitch_8
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDynamicFeature()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    const/16 p0, 0xb7

    return p0

    :pswitch_9
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/DataItemFeature;->isSupportDynamicFeature()Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    const/16 p0, 0xa6

    return p0

    :pswitch_a
    const/16 p0, 0xd1

    return p0

    :cond_9
    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x659a9683 -> :sswitch_a
        -0x52636511 -> :sswitch_9
        -0x52636474 -> :sswitch_8
        -0x40056f78 -> :sswitch_7
        0x5a5dd5d -> :sswitch_6
        0x6b19ae4 -> :sswitch_5
        0x335cd11b -> :sswitch_4
        0x3fc6a675 -> :sswitch_3
        0x44a112c6 -> :sswitch_2
        0x46d3c82e -> :sswitch_1
        0x6240e783 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getScope(I)I
    .locals 1

    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_0

    const/16 p0, 0x1000

    return p0

    :cond_0
    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/16 p0, 0x10

    return p0
.end method

.method public static final wrapDownloadingProgress(I)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x64L
        .end annotation
    .end param

    add-int/lit16 p0, p0, 0x1000

    return p0
.end method


# virtual methods
.method protected achieveEndOfCycle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getState()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/observeable/VMFeature;->mRxLoadingState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {p0}, Lcom/android/camera/data/observeable/RxData;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public removeFeature(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/observeable/VMFeature$FeatureModule;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/camera/data/observeable/VMFeature;->mRxLoadingState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {p0}, Lcom/android/camera/data/observeable/RxData;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected rollbackData()V
    .locals 0

    return-void
.end method

.method public startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lio/reactivex/functions/Consumer<",
            "Lcom/android/camera/data/observeable/RxData$DataWrap<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/observeable/VMFeature;->mRxLoadingState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/observeable/RxData;->observable(Landroidx/lifecycle/LifecycleOwner;)Lcom/android/camera/data/observeable/RxData$DataObservable;

    move-result-object p0

    invoke-virtual {p0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public updateState(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/observeable/VMFeature$FeatureModule;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/observeable/VMFeature;->mRxLoadingState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/RxData;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/observeable/VMFeature;->mRxLoadingState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData;->notifyChanged()V

    invoke-virtual {p0}, Lcom/android/camera/data/observeable/VMBase;->judge()V

    return-void
.end method
