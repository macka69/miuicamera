.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$1lged46k8dd9LPDzGUN4RhmquHE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$1lged46k8dd9LPDzGUN4RhmquHE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$1lged46k8dd9LPDzGUN4RhmquHE;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$1lged46k8dd9LPDzGUN4RhmquHE;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$1lged46k8dd9LPDzGUN4RhmquHE;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$1lged46k8dd9LPDzGUN4RhmquHE;

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

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$new$2(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V

    return-void
.end method
