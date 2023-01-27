.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$JAIcRfzYe4pOqJpOrsBl6ofbWyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/util/RenderSourceType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/util/RenderSourceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$JAIcRfzYe4pOqJpOrsBl6ofbWyU;->f$0:Lcom/android/camera/dualvideo/util/RenderSourceType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$JAIcRfzYe4pOqJpOrsBl6ofbWyU;->f$0:Lcom/android/camera/dualvideo/util/RenderSourceType;

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderSource;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->lambda$genOrUpdateRenderSource$3(Lcom/android/camera/dualvideo/util/RenderSourceType;Lcom/android/camera/dualvideo/render/RenderSource;)Z

    move-result p0

    return p0
.end method
