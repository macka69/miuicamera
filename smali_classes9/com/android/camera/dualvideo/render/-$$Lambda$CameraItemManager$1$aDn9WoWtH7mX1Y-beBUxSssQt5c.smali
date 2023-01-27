.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1$aDn9WoWtH7mX1Y-beBUxSssQt5c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1$aDn9WoWtH7mX1Y-beBUxSssQt5c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1$aDn9WoWtH7mX1Y-beBUxSssQt5c;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1$aDn9WoWtH7mX1Y-beBUxSssQt5c;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1$aDn9WoWtH7mX1Y-beBUxSssQt5c;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$1$aDn9WoWtH7mX1Y-beBUxSssQt5c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/CameraItemManager$1;->lambda$onUpdated$0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p0

    return p0
.end method
