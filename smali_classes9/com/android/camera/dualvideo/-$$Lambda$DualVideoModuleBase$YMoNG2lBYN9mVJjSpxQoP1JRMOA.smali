.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$YMoNG2lBYN9mVJjSpxQoP1JRMOA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$YMoNG2lBYN9mVJjSpxQoP1JRMOA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$YMoNG2lBYN9mVJjSpxQoP1JRMOA;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$YMoNG2lBYN9mVJjSpxQoP1JRMOA;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$YMoNG2lBYN9mVJjSpxQoP1JRMOA;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$YMoNG2lBYN9mVJjSpxQoP1JRMOA;

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

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$hasRemoteCamera$47(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z

    move-result p0

    return p0
.end method
