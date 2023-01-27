.class public Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;
.super Ljava/lang/Object;
.source "MimojiFuTypeItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mFuColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;"
        }
    .end annotation
.end field

.field private mFuItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexFuColor:I

.field private mIndexFuItem:I

.field private mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

.field private mNameResource:I


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;Ljava/util/List;ILjava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuItem:I

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuColor:I

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mFuItemList:Ljava/util/List;

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuItem:I

    iput-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mFuColorList:Ljava/util/List;

    iput p5, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuColor:I

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    iput p6, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mNameResource:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuItem:I

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuColor:I

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mFuItemList:Ljava/util/List;

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuItem:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuItem:I

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuColor:I

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mFuItemList:Ljava/util/List;

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuItem:I

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mFuColorList:Ljava/util/List;

    iput p4, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuColor:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuColor:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuItem:I

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getFuColorList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mFuColorList:Ljava/util/List;

    return-object p0
.end method

.method public getFuItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mFuItemList:Ljava/util/List;

    return-object p0
.end method

.method public getIndexFuColor()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuColor:I

    return p0
.end method

.method public getIndexFuItem()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuItem:I

    return p0
.end method

.method public getMimojiFuType()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    return-object p0
.end method

.method public getNameResource()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mNameResource:I

    return p0
.end method

.method public isFull()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mFuItemList:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mFuItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public setFuColorList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mFuColorList:Ljava/util/List;

    return-void
.end method

.method public setFuItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mFuItemList:Ljava/util/List;

    return-void
.end method

.method public setIndexFuColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuColor:I

    return-void
.end method

.method public setIndexFuItem(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mIndexFuItem:I

    return-void
.end method

.method public setMimojiFuType(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    return-void
.end method

.method public setNameResource(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->mNameResource:I

    return-void
.end method
