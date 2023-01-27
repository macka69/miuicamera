.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$3CEz5LAStogYZmJwJb3HHqc4Y5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$3CEz5LAStogYZmJwJb3HHqc4Y5Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$3CEz5LAStogYZmJwJb3HHqc4Y5Y;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$3CEz5LAStogYZmJwJb3HHqc4Y5Y;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$3CEz5LAStogYZmJwJb3HHqc4Y5Y;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$3CEz5LAStogYZmJwJb3HHqc4Y5Y;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderSource;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->lambda$genOrUpdateRenderSource$4(Lcom/android/camera/dualvideo/render/RenderSource;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method
