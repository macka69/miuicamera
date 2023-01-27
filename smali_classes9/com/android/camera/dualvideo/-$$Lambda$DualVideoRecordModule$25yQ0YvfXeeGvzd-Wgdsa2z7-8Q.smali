.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$25yQ0YvfXeeGvzd-Wgdsa2z7-8Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$25yQ0YvfXeeGvzd-Wgdsa2z7-8Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$25yQ0YvfXeeGvzd-Wgdsa2z7-8Q;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$25yQ0YvfXeeGvzd-Wgdsa2z7-8Q;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$25yQ0YvfXeeGvzd-Wgdsa2z7-8Q;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$25yQ0YvfXeeGvzd-Wgdsa2z7-8Q;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->lambda$switchToGridWindow$8(Lcom/android/camera/dualvideo/render/RenderManager;)V

    return-void
.end method
