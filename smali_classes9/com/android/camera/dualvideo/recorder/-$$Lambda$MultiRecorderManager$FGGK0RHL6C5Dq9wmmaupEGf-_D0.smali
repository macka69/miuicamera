.class public final synthetic Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$FGGK0RHL6C5Dq9wmmaupEGf-_D0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$FGGK0RHL6C5Dq9wmmaupEGf-_D0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$FGGK0RHL6C5Dq9wmmaupEGf-_D0;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$FGGK0RHL6C5Dq9wmmaupEGf-_D0;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$FGGK0RHL6C5Dq9wmmaupEGf-_D0;->INSTANCE:Lcom/android/camera/dualvideo/recorder/-$$Lambda$MultiRecorderManager$FGGK0RHL6C5Dq9wmmaupEGf-_D0;

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

    invoke-static {p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->lambda$stopRecorder$3(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
