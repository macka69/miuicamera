.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$vvDsfv2uE1JwBd8RSAfXT7Sy2tI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$vvDsfv2uE1JwBd8RSAfXT7Sy2tI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$vvDsfv2uE1JwBd8RSAfXT7Sy2tI;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$vvDsfv2uE1JwBd8RSAfXT7Sy2tI;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$vvDsfv2uE1JwBd8RSAfXT7Sy2tI;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$vvDsfv2uE1JwBd8RSAfXT7Sy2tI;

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

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->lambda$releaseRemote$2(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z

    move-result p0

    return p0
.end method
