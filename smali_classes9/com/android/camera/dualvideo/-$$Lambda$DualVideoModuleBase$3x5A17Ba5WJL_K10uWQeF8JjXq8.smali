.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$3x5A17Ba5WJL_K10uWQeF8JjXq8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$3x5A17Ba5WJL_K10uWQeF8JjXq8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$3x5A17Ba5WJL_K10uWQeF8JjXq8;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$3x5A17Ba5WJL_K10uWQeF8JjXq8;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$3x5A17Ba5WJL_K10uWQeF8JjXq8;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$3x5A17Ba5WJL_K10uWQeF8JjXq8;

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

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$new$0(Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
