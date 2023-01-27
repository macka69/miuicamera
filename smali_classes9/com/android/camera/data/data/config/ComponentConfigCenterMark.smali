.class public Lcom/android/camera/data/data/config/ComponentConfigCenterMark;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigCenterMark.java"


# static fields
.field private static final SCOPE_NS_DUMMY_FILM:Ljava/lang/String; = "film"

.field private static final SCOPE_NS_PHOTO:Ljava/lang/String; = "photo"

.field private static final SCOPE_NS_PHOTO_PRO:Ljava/lang/String; = "photo_pro"

.field private static final SCOPE_NS_UNSUPPORTED:Ljava/lang/String; = "unsupported"

.field private static final SCOPE_NS_VIDEO:Ljava/lang/String; = "video"

.field private static final SCOPE_NS_VIDEO_PRO:Ljava/lang/String; = "video_pro"

.field private static final TAG:Ljava/lang/String; = "CCENTERMARK"

.field public static final VALUE_CENTER_MARK_OFF:Ljava/lang/String; = "off"

.field public static final VALUE_CENTER_MARK_ON:Ljava/lang/String; = "on"


# instance fields
.field private mCameraId:I

.field private mCapturingMode:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    iput p2, p0, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;->mCameraId:I

    return-void
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;->mCameraId:I

    const-string v1, "off"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;->getKey(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "unsupported"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "off"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "CCENTERMARK#getItems() not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa5

    if-eq p1, p0, :cond_0

    const/16 p0, 0xcd

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd6

    if-eq p1, p0, :cond_0

    const/16 p0, 0xb3

    if-eq p1, p0, :cond_0

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_0

    const/16 p0, 0xb7

    if-eq p1, p0, :cond_0

    const/16 p0, 0xb8

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd3

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd4

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    const-string p0, "pref_camera_center_mark_key_unsupported"

    return-object p0

    :cond_0
    :pswitch_0
    const-string p0, "pref_camera_center_mark_key"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xab
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xba
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xcf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isSwitchOn(I)Z
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_camera_referenceline_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public reInit(II)V
    .locals 0

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;->mCapturingMode:I

    iput p2, p0, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;->mCameraId:I

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;->getKey(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unsupported"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public toSwitch(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "on"

    goto :goto_0

    :cond_0
    const-string p2, "off"

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigCenterMark;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
