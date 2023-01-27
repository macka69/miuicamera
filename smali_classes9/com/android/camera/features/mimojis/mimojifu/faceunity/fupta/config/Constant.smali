.class public abstract Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/config/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "FUNewPTA"

.field private static animojiPath:[Ljava/lang/String; = null

.field public static filePath:Ljava/lang/String; = null

.field public static fxaaPath:Ljava/lang/String; = "fxaa.bundle"

.field public static hairMaskPath:Ljava/lang/String; = ""

.field public static head1Path:Ljava/lang/String; = null

.field public static netType:Ljava/lang/String; = "QStyle"

.field public static pta_client_version_new:Ljava/lang/String; = ""

.field public static versionPath:Ljava/lang/String; = null

.field public static web_url_check:Ljava/lang/String; = ""

.field public static web_url_create_download:Ljava/lang/String; = ""

.field public static web_url_create_upload_image:Ljava/lang/String; = ""

.field public static web_url_get_token:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimojiPath()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/config/Constant;->animojiPath:[Ljava/lang/String;

    return-object v0
.end method

.method public static setFilePath(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/FaceUnity"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "FUNewPTA"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/config/Constant;->filePath:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/config/Constant;->filePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "versionPath.json"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/config/Constant;->versionPath:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "head_1"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/config/Constant;->head1Path:Ljava/lang/String;

    const/4 p0, 0x6

    new-array v0, p0, [Ljava/lang/String;

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/config/Constant;->animojiPath:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/config/Constant;->animojiPath:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->TEMPLATE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "head_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
