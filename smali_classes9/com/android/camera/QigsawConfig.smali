.class public final Lcom/android/camera/QigsawConfig;
.super Ljava/lang/Object;
.source "QigsawConfig.java"


# static fields
.field public static final DEFAULT_SPLIT_INFO_VERSION:Ljava/lang/String; = "5.0.0.0_2.0"

.field public static final DYNAMIC_FEATURES:[Ljava/lang/String;

.field public static final QIGSAW_ID:Ljava/lang/String; = "5.0.0.0"

.field public static final QIGSAW_MODE:Z

.field public static final VERSION_NAME:Ljava/lang/String; = "4.3.210412.4"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string/jumbo v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/QigsawConfig;->QIGSAW_MODE:Z

    const-string/jumbo v1, "vlog2"

    const-string v2, "milive"

    const-string v3, "document"

    const-string v4, "clone"

    const-string v5, "panorama"

    const-string v6, "ambilight"

    const-string v7, "mimojias"

    const-string v8, "mimojifu"

    const-string/jumbo v9, "videosky"

    const-string v10, "movielens"

    const-string/jumbo v11, "supernight"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/QigsawConfig;->DYNAMIC_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
