.class public final synthetic Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVFeature$zmAx7lsJgHsT1UxMwxa4Irz8EF0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/value/SimpleLottieValueCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVFeature$zmAx7lsJgHsT1UxMwxa4Irz8EF0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVFeature$zmAx7lsJgHsT1UxMwxa4Irz8EF0;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVFeature$zmAx7lsJgHsT1UxMwxa4Irz8EF0;-><init>()V

    sput-object v0, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVFeature$zmAx7lsJgHsT1UxMwxa4Irz8EF0;->INSTANCE:Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVFeature$zmAx7lsJgHsT1UxMwxa4Irz8EF0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->lambda$onInstallStateChanged$2(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method
