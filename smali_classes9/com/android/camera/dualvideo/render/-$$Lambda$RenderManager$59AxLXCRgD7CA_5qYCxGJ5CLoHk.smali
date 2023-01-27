.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$59AxLXCRgD7CA_5qYCxGJ5CLoHk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$59AxLXCRgD7CA_5qYCxGJ5CLoHk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$59AxLXCRgD7CA_5qYCxGJ5CLoHk;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$59AxLXCRgD7CA_5qYCxGJ5CLoHk;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$59AxLXCRgD7CA_5qYCxGJ5CLoHk;->INSTANCE:Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$59AxLXCRgD7CA_5qYCxGJ5CLoHk;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderSource;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->lambda$prepare$23(Lcom/android/camera/dualvideo/render/RenderSource;)Z

    move-result p0

    return p0
.end method
