.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$_7MSc8XfsaKQoXGu-VnEdpahAuU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$_7MSc8XfsaKQoXGu-VnEdpahAuU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$_7MSc8XfsaKQoXGu-VnEdpahAuU;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$_7MSc8XfsaKQoXGu-VnEdpahAuU;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$_7MSc8XfsaKQoXGu-VnEdpahAuU;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$_7MSc8XfsaKQoXGu-VnEdpahAuU;

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

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$addOrDelRemoteConfig$39(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z

    move-result p0

    return p0
.end method
