.class public Lcom/idb/device/CameraResource$CameraControl;
.super Ljava/lang/Object;
.source "CameraResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idb/device/CameraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraControl"
.end annotation


# static fields
.field public static final CMD_START_AUDIO:Ljava/lang/String; = "CMD_START_AUDIO"

.field public static final CMD_START_VIDEO:Ljava/lang/String; = "CMD_START_VIDEO"

.field public static final CMD_START_VIDEOANDAUDIO:Ljava/lang/String; = "CMD_START_VIDEOANDAUDIO"

.field public static final CMD_STOP_AUDIO:Ljava/lang/String; = "CMD_STOP_AUDIO"

.field public static final CMD_STOP_VIDEO:Ljava/lang/String; = "CMD_STOP_VIDEO"

.field public static final CMD_STOP_VIDEOANDAUDIO:Ljava/lang/String; = "CMD_STOP_VIDEOANDAUDIO"

.field public static final VIDEOQUALITY_1080P:I = 0x3

.field public static final VIDEOQUALITY_360P:I = 0x1

.field public static final VIDEOQUALITY_720P:I = 0x2

.field public static final VIDEOQUALITY_DEFAULT:I


# instance fields
.field private command:Ljava/lang/String;

.field final synthetic this$0:Lcom/idb/device/CameraResource;

.field private videoQuality:I


# direct methods
.method constructor <init>(Lcom/idb/device/CameraResource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idb/device/CameraResource$CameraControl;->this$0:Lcom/idb/device/CameraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/idb/device/CameraResource$CameraControl;->command:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/idb/device/CameraResource$CameraControl;->videoQuality:I

    return-void
.end method

.method constructor <init>(Lcom/idb/device/CameraResource;Lorg/json/JSONObject;)V
    .locals 1

    iput-object p1, p0, Lcom/idb/device/CameraResource$CameraControl;->this$0:Lcom/idb/device/CameraResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "command"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idb/device/CameraResource$CameraControl;->command:Ljava/lang/String;

    const-string/jumbo p1, "videoQuality"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/idb/device/CameraResource$CameraControl;->videoQuality:I

    return-void
.end method

.method static synthetic access$000(Lcom/idb/device/CameraResource$CameraControl;)I
    .locals 0

    iget p0, p0, Lcom/idb/device/CameraResource$CameraControl;->videoQuality:I

    return p0
.end method

.method static synthetic access$002(Lcom/idb/device/CameraResource$CameraControl;I)I
    .locals 0

    iput p1, p0, Lcom/idb/device/CameraResource$CameraControl;->videoQuality:I

    return p1
.end method

.method static synthetic access$100(Lcom/idb/device/CameraResource$CameraControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idb/device/CameraResource$CameraControl;->command:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/idb/device/CameraResource$CameraControl;->command:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "command"

    iget-object v2, p0, Lcom/idb/device/CameraResource$CameraControl;->command:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "videoQuality"

    iget p0, p0, Lcom/idb/device/CameraResource$CameraControl;->videoQuality:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CameraResource"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method
