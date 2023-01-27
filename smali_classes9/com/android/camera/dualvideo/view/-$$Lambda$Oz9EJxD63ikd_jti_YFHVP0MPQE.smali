.class public final synthetic Lcom/android/camera/dualvideo/view/-$$Lambda$Oz9EJxD63ikd_jti_YFHVP0MPQE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/view/-$$Lambda$Oz9EJxD63ikd_jti_YFHVP0MPQE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/view/-$$Lambda$Oz9EJxD63ikd_jti_YFHVP0MPQE;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/view/-$$Lambda$Oz9EJxD63ikd_jti_YFHVP0MPQE;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/view/-$$Lambda$Oz9EJxD63ikd_jti_YFHVP0MPQE;->INSTANCE:Lcom/android/camera/dualvideo/view/-$$Lambda$Oz9EJxD63ikd_jti_YFHVP0MPQE;

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

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;->getRenderManager()Lcom/android/camera/dualvideo/render/RenderManager;

    move-result-object p0

    return-object p0
.end method
