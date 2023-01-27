.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$e9jFcC9A06kqx4B1bAyUxWL8j-Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$e9jFcC9A06kqx4B1bAyUxWL8j-Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$e9jFcC9A06kqx4B1bAyUxWL8j-Q;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$e9jFcC9A06kqx4B1bAyUxWL8j-Q;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$e9jFcC9A06kqx4B1bAyUxWL8j-Q;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$e9jFcC9A06kqx4B1bAyUxWL8j-Q;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->lambda$getIdByPosition$32(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
