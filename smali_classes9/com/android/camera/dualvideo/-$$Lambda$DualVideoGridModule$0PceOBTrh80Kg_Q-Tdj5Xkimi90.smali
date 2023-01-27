.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$0PceOBTrh80Kg_Q-Tdj5Xkimi90;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$0PceOBTrh80Kg_Q-Tdj5Xkimi90;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$0PceOBTrh80Kg_Q-Tdj5Xkimi90;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$0PceOBTrh80Kg_Q-Tdj5Xkimi90;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$0PceOBTrh80Kg_Q-Tdj5Xkimi90;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$0PceOBTrh80Kg_Q-Tdj5Xkimi90;

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

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoGridModule;->lambda$releaseRemote$1(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z

    move-result p0

    return p0
.end method
