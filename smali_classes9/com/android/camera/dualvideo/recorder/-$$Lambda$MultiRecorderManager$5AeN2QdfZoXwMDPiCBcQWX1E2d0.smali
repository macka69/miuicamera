.class public final synthetic Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$5AeN2QdfZoXwMDPiCBcQWX1E2d0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$5AeN2QdfZoXwMDPiCBcQWX1E2d0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$5AeN2QdfZoXwMDPiCBcQWX1E2d0;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$5AeN2QdfZoXwMDPiCBcQWX1E2d0;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$5AeN2QdfZoXwMDPiCBcQWX1E2d0;->INSTANCE:Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$5AeN2QdfZoXwMDPiCBcQWX1E2d0;

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

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->lambda$stopRecorder$4([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
