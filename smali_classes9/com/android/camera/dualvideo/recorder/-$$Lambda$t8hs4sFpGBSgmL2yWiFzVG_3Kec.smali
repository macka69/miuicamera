.class public final synthetic Lcom/android/camera/dualvideo/recorder/-$$Lambda$t8hs4sFpGBSgmL2yWiFzVG_3Kec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/recorder/-$$Lambda$t8hs4sFpGBSgmL2yWiFzVG_3Kec;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$t8hs4sFpGBSgmL2yWiFzVG_3Kec;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/recorder/-$$Lambda$t8hs4sFpGBSgmL2yWiFzVG_3Kec;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$t8hs4sFpGBSgmL2yWiFzVG_3Kec;->INSTANCE:Lcom/android/camera/dualvideo/recorder/-$$Lambda$t8hs4sFpGBSgmL2yWiFzVG_3Kec;

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

    check-cast p1, Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->isPaused()Z

    move-result p0

    return p0
.end method
