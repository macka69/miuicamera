.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$UpdateHelper$bZIQmOcdhGnZDY3RwMmgn7SPNws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$UpdateHelper$bZIQmOcdhGnZDY3RwMmgn7SPNws;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$UpdateHelper$bZIQmOcdhGnZDY3RwMmgn7SPNws;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$UpdateHelper$bZIQmOcdhGnZDY3RwMmgn7SPNws;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$UpdateHelper$bZIQmOcdhGnZDY3RwMmgn7SPNws;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$UpdateHelper$bZIQmOcdhGnZDY3RwMmgn7SPNws;

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

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/UpdateHelper;->lambda$deleteItem$2(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p0

    return p0
.end method
