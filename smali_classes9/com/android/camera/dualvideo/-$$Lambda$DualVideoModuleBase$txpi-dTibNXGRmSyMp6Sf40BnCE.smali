.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$txpi-dTibNXGRmSyMp6Sf40BnCE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$txpi-dTibNXGRmSyMp6Sf40BnCE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$txpi-dTibNXGRmSyMp6Sf40BnCE;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$txpi-dTibNXGRmSyMp6Sf40BnCE;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$txpi-dTibNXGRmSyMp6Sf40BnCE;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$txpi-dTibNXGRmSyMp6Sf40BnCE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$onCameraOpened$16(Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
