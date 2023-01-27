.class public final synthetic Lcom/xiaomi/camera/device/-$$Lambda$CameraService$r6lnoHKvMdRXYTc1YJyOQaE-ti4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaomi/camera/device/-$$Lambda$CameraService$r6lnoHKvMdRXYTc1YJyOQaE-ti4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/device/-$$Lambda$CameraService$r6lnoHKvMdRXYTc1YJyOQaE-ti4;

    invoke-direct {v0}, Lcom/xiaomi/camera/device/-$$Lambda$CameraService$r6lnoHKvMdRXYTc1YJyOQaE-ti4;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/device/-$$Lambda$CameraService$r6lnoHKvMdRXYTc1YJyOQaE-ti4;->INSTANCE:Lcom/xiaomi/camera/device/-$$Lambda$CameraService$r6lnoHKvMdRXYTc1YJyOQaE-ti4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/camera/device/CameraService;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
