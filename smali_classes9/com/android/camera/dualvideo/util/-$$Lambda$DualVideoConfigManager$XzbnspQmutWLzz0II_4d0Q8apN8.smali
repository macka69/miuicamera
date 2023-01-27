.class public final synthetic Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$XzbnspQmutWLzz0II_4d0Q8apN8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$XzbnspQmutWLzz0II_4d0Q8apN8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$XzbnspQmutWLzz0II_4d0Q8apN8;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$XzbnspQmutWLzz0II_4d0Q8apN8;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$XzbnspQmutWLzz0II_4d0Q8apN8;->INSTANCE:Lcom/android/camera/dualvideo/util/-$$Lambda$DualVideoConfigManager$XzbnspQmutWLzz0II_4d0Q8apN8;

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

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-static {p1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->lambda$getMinZoom$13(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
