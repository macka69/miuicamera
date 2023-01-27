.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$KrZq1rGjF00Pyi8UDg8w9NLOxYU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$KrZq1rGjF00Pyi8UDg8w9NLOxYU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$KrZq1rGjF00Pyi8UDg8w9NLOxYU;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$KrZq1rGjF00Pyi8UDg8w9NLOxYU;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$KrZq1rGjF00Pyi8UDg8w9NLOxYU;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$KrZq1rGjF00Pyi8UDg8w9NLOxYU;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->onKeyUp()V

    return-void
.end method
