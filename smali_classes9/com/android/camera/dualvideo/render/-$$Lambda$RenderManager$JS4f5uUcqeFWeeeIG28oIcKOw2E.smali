.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$JS4f5uUcqeFWeeeIG28oIcKOw2E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$JS4f5uUcqeFWeeeIG28oIcKOw2E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$JS4f5uUcqeFWeeeIG28oIcKOw2E;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$JS4f5uUcqeFWeeeIG28oIcKOw2E;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$JS4f5uUcqeFWeeeIG28oIcKOw2E;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$JS4f5uUcqeFWeeeIG28oIcKOw2E;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->lambda$hasMiniComposeType$21(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p0

    return p0
.end method
