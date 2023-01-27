.class public Lcom/android/camera/videoplayer/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final SHOW_LOGS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "VideoPlayerView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/videoplayer/Config;->SHOW_LOGS:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
