.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$3O9Xvz1V8jwaYVTJ3d12FX_FMlE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$3O9Xvz1V8jwaYVTJ3d12FX_FMlE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$3O9Xvz1V8jwaYVTJ3d12FX_FMlE;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$3O9Xvz1V8jwaYVTJ3d12FX_FMlE;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$3O9Xvz1V8jwaYVTJ3d12FX_FMlE;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$3O9Xvz1V8jwaYVTJ3d12FX_FMlE;

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

    check-cast p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->showHomeDialog()V

    return-void
.end method
