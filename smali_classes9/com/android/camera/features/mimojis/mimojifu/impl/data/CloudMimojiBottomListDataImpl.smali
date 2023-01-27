.class public Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;
.super Ljava/lang/Object;
.source "CloudMimojiBottomListDataImpl.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudMimojiBottomListDataImpl"


# instance fields
.field private mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

.field private final resourceBg:[I

.field private final resourceBgDesc:[I

.field private final resourceTimbre:[I

.field private final resourceTimbreDesc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceBg:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceBgDesc:[I

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceTimbre:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceTimbreDesc:[I

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080302
        0x7f080304
        0x7f080307
        0x7f080306
        0x7f080303
        0x7f080308
        0x7f080305
        0x7f080301
    .end array-data

    :array_1
    .array-data 4
        0x7f080302
        0x7f080304
        0x7f080307
        0x7f080306
        0x7f080303
        0x7f080308
        0x7f080305
        0x7f080301
    .end array-data

    :array_2
    .array-data 4
        0x7f08030e
        0x7f080310
        0x7f08030f
        0x7f08030d
        0x7f080312
    .end array-data

    :array_3
    .array-data 4
        0x7f1108c6
        0x7f1108c8
        0x7f1108c7
        0x7f1108c5
        0x7f1108ca
    .end array-data
.end method


# virtual methods
.method public initAvatarData(ILjava/util/List;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->pullNewList(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public initBgData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;Ljava/util/List;)I
    .locals 9

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getBgList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceBg:[I

    array-length v2, v2

    if-eq v1, v2, :cond_1

    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->TAG:Ljava/lang/String;

    const-string p1, "mimoji bg resource size error"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    :cond_1
    const/4 v1, -0x3

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    invoke-direct {v2, v5}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;-><init>(Z)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceBg:[I

    aget v6, v6, v3

    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceBgDesc:[I

    aget v7, v7, v3

    add-int/lit8 v8, v3, 0x1

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;III)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->setSelected(Z)V

    move v1, v3

    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v8

    goto :goto_1

    :cond_4
    return v1
.end method

.method public initTimbreData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;Ljava/util/List;)I
    .locals 7

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceTimbre:[I

    array-length v0, v0

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->timbreTypes:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->TAG:Ljava/lang/String;

    const-string p1, "mimoji timbre resource size error"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    :cond_1
    const/4 v0, -0x3

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    invoke-direct {v1, v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;-><init>(Z)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceTimbre:[I

    array-length v1, v1

    if-ge v2, v1, :cond_4

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->timbreTypes:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceTimbre:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceTimbreDesc:[I

    aget v6, v6, v2

    invoke-direct {v1, v4, v5, v6}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;-><init>(III)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->getTimbreId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->getTimbreId()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v1, v3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->setSelected(Z)V

    add-int/lit8 v0, v2, 0x1

    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method
