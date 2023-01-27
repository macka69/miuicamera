.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;
.super Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;
.source "FuItem.java"


# instance fields
.field private age:[Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private body_visible_parts:[Ljava/lang/Integer;

.field private bundle:Ljava/lang/String;

.field private gender:I

.field private gender_match:I

.field private icon:I

.field private label:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->age:[Ljava/lang/String;

    return-object p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBody_visible_parts()[Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->body_visible_parts:[Ljava/lang/Integer;

    return-object p0
.end method

.method public getBundle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bundle:Ljava/lang/String;

    return-object p0
.end method

.method public getBundlePath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bundle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bundle:Ljava/lang/String;

    const-string v0, ".bundle"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->getLastName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getGender()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->gender:I

    return p0
.end method

.method public getGender_match()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->gender_match:I

    return p0
.end method

.method public getIcon()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->icon:I

    return p0
.end method

.method public getLabel()[Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->label:[Ljava/lang/Integer;

    return-object p0
.end method

.method public release()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setSelect(Z)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public setAge([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->age:[Ljava/lang/String;

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBody_visible_parts([Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->body_visible_parts:[Ljava/lang/Integer;

    return-void
.end method

.method public setBundle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->bundle:Ljava/lang/String;

    return-void
.end method

.method public setGender(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->gender:I

    return-void
.end method

.method public setGender_match(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->gender_match:I

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->icon:I

    return-void
.end method

.method public setLabel([Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->label:[Ljava/lang/Integer;

    return-void
.end method
