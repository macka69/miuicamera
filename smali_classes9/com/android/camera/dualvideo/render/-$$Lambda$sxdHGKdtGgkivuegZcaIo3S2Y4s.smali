.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$sxdHGKdtGgkivuegZcaIo3S2Y4s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$sxdHGKdtGgkivuegZcaIo3S2Y4s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$sxdHGKdtGgkivuegZcaIo3S2Y4s;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$sxdHGKdtGgkivuegZcaIo3S2Y4s;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$sxdHGKdtGgkivuegZcaIo3S2Y4s;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$sxdHGKdtGgkivuegZcaIo3S2Y4s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    check-cast p2, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/RenderUtil;->compare(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/render/CameraItemInterface;)I

    move-result p0

    return p0
.end method
