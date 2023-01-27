.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$WR4ttxaY4tYD9fj8XLPTL0sFmd4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$WR4ttxaY4tYD9fj8XLPTL0sFmd4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$WR4ttxaY4tYD9fj8XLPTL0sFmd4;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$WR4ttxaY4tYD9fj8XLPTL0sFmd4;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$WR4ttxaY4tYD9fj8XLPTL0sFmd4;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$WR4ttxaY4tYD9fj8XLPTL0sFmd4;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoGridModule;->lambda$switchToRecordWindow$3(Lcom/android/camera/dualvideo/render/RenderManager;)V

    return-void
.end method
