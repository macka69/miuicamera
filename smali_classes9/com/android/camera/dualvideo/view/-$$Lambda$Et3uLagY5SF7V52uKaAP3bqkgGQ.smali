.class public final synthetic Lcom/android/camera/dualvideo/view/-$$Lambda$Et3uLagY5SF7V52uKaAP3bqkgGQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/view/-$$Lambda$Et3uLagY5SF7V52uKaAP3bqkgGQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/view/-$$Lambda$Et3uLagY5SF7V52uKaAP3bqkgGQ;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/view/-$$Lambda$Et3uLagY5SF7V52uKaAP3bqkgGQ;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/view/-$$Lambda$Et3uLagY5SF7V52uKaAP3bqkgGQ;->INSTANCE:Lcom/android/camera/dualvideo/view/-$$Lambda$Et3uLagY5SF7V52uKaAP3bqkgGQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->getCameraItemManager()Lcom/android/camera/dualvideo/render/CameraItemManager;

    move-result-object p0

    return-object p0
.end method
