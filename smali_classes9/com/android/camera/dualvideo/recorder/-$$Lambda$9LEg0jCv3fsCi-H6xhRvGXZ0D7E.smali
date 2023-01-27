.class public final synthetic Lcom/android/camera/dualvideo/recorder/-$$Lambda$9LEg0jCv3fsCi-H6xhRvGXZ0D7E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/recorder/-$$Lambda$9LEg0jCv3fsCi-H6xhRvGXZ0D7E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$9LEg0jCv3fsCi-H6xhRvGXZ0D7E;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/recorder/-$$Lambda$9LEg0jCv3fsCi-H6xhRvGXZ0D7E;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/recorder/-$$Lambda$9LEg0jCv3fsCi-H6xhRvGXZ0D7E;->INSTANCE:Lcom/android/camera/dualvideo/recorder/-$$Lambda$9LEg0jCv3fsCi-H6xhRvGXZ0D7E;

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

    check-cast p1, Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->start()V

    return-void
.end method
