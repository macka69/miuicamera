.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$9nprGKgN3QaulgBV6x13e85D59I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$9nprGKgN3QaulgBV6x13e85D59I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$9nprGKgN3QaulgBV6x13e85D59I;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$9nprGKgN3QaulgBV6x13e85D59I;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$9nprGKgN3QaulgBV6x13e85D59I;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$9nprGKgN3QaulgBV6x13e85D59I;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    return-object p0
.end method
