.class public Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;
.super Lcom/android/camera/resource/BaseResourceItem;
.source "MimojiItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/resource/BaseResourceItem;",
        "Ljava/lang/Comparable<",
        "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_WATERMARK:I = 0x7d0

.field public static final ID_PREFIX:Ljava/lang/String; = "mimoji"

.field public static final PRE_CARTOON:Ljava/lang/String; = "pre_cartoon"

.field public static final PRE_HUMAN:Ljava/lang/String; = "pre_human"


# instance fields
.field public coverPath:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public transient index:I

.field public isValid:Z

.field public itemVersion:Ljava/lang/String;

.field private mAvatarConfigInfoArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAvatarTemplatePath:Ljava/lang/String;

.field public mConfigPath:Ljava/lang/String;

.field public mData:[B

.field private mDefaultFrame:I

.field public mDirectoryName:J

.field private mDownLoadState:Z

.field private mFrame:I

.field private mIsNeedAnim:Z

.field private mIsPreHuman:Z

.field public mName:I

.field public mName2:I

.field public mPackPath:Ljava/lang/String;

.field public mThumbnailUrl:Ljava/lang/String;

.field public mThumbnailUrl2:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public placeholder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem$1;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem$1;-><init>()V

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/resource/BaseResourceItem;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mFrame:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDefaultFrame:I

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mIsNeedAnim:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mIsPreHuman:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDownLoadState:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->isValid:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/resource/BaseResourceItem;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mFrame:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDefaultFrame:I

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mIsNeedAnim:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mIsPreHuman:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDownLoadState:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->coverPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/resource/BaseResourceItem;->versionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/resource/BaseResourceItem;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/resource/BaseResourceItem;->baseArchivesFolder:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)I
    .locals 3

    iget-wide v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDirectoryName:J

    iget-wide p0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDirectoryName:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->compareTo(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public fillDetailData(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public getAvatarConfigInfoArrayList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarConfigInfoArrayList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDefaultFrame()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDefaultFrame:I

    return p0
.end method

.method public getFrame()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mFrame:I

    return p0
.end method

.method public getIDPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, "mimoji"

    return-object p0
.end method

.method public isCloudItem()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->placeholder:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isIsNeedAnim()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mIsNeedAnim:Z

    return p0
.end method

.method public isIsPreHuman()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mIsPreHuman:Z

    return p0
.end method

.method public nextFrame()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarConfigInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mFrame:I

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarConfigInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mFrame:I

    :cond_0
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mFrame:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mFrame:I

    :cond_1
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mFrame:I

    return p0
.end method

.method public onDecompressFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDownLoadState:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->simpleVerification(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/android/camera/resource/BaseResourceItem;->mZipPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->baseArchivesFolder:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    :cond_2
    return-void
.end method

.method public onDecompressFinished(Ljava/lang/String;Z)V
    .locals 1

    iget-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string v0, "add_state"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string v0, "close_state"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/resource/BaseResourceItem;->baseArchivesFolder:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "originPhoto.jpg"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->coverPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mPackPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string p2, "MIMOJI_CREATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mIsPreHuman:Z

    :cond_1
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public parseSummaryData(Lorg/json/JSONObject;I)V
    .locals 2

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->index:I

    const-string p2, "exclude"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->isValid:Z

    return-void

    :cond_0
    const-string p2, "include"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mi/config/Device;->BUILD_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->isValid:Z

    return-void

    :cond_1
    const-string p2, "placeholder"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->placeholder:Ljava/lang/String;

    const-string p2, "id"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string v0, "add_state"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string v0, "close_state"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->placeholder:Ljava/lang/String;

    if-eqz p2, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    :cond_3
    iget-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    const-string v0, "human"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mIsPreHuman:Z

    :cond_4
    const-string/jumbo p2, "uri"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->uri:Ljava/lang/String;

    const-string p2, "iconUrl"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->iconUrl:Ljava/lang/String;

    const-string p2, "itemVersion"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->itemVersion:Ljava/lang/String;

    const-string p2, "downloadState"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDownLoadState:Z

    return-void
.end method

.method public setAvatarConfigInfoArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarConfigInfoArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public setDefaultFrame(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDefaultFrame:I

    return-void
.end method

.method public setFrame(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mFrame:I

    return-void
.end method

.method public setIsNeedAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mIsNeedAnim:Z

    return-void
.end method

.method public setIsPreHuman(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mIsPreHuman:Z

    return-void
.end method

.method public simpleVerification(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "info.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "originPhoto.jpg"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/resource/BaseResourceItem;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteDir(Ljava/io/File;)Z

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteDir(Ljava/io/File;)Z

    return v4

    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->placeholder:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method public versionVerification(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->coverPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/camera/resource/BaseResourceItem;->versionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/android/camera/resource/BaseResourceItem;->uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/resource/BaseResourceItem;->baseArchivesFolder:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
