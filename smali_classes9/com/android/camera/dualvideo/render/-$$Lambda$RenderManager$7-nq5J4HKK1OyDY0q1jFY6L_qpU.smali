.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$7-nq5J4HKK1OyDY0q1jFY6L_qpU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/FaceType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/FaceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$7-nq5J4HKK1OyDY0q1jFY6L_qpU;->f$0:Lcom/android/camera/dualvideo/render/FaceType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$7-nq5J4HKK1OyDY0q1jFY6L_qpU;->f$0:Lcom/android/camera/dualvideo/render/FaceType;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->lambda$updateBlurTex$24(Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p0

    return p0
.end method
