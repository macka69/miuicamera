.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$5C3prhzUdn9x6-l-NnV7LcbHuuU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$5C3prhzUdn9x6-l-NnV7LcbHuuU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$5C3prhzUdn9x6-l-NnV7LcbHuuU;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$5C3prhzUdn9x6-l-NnV7LcbHuuU;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$5C3prhzUdn9x6-l-NnV7LcbHuuU;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$5C3prhzUdn9x6-l-NnV7LcbHuuU;

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

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$setFlashMode$6(Lcom/android/camera/dualvideo/render/RenderManager;)V

    return-void
.end method
