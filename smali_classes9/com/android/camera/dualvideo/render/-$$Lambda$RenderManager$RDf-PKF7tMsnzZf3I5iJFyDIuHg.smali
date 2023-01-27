.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$RDf-PKF7tMsnzZf3I5iJFyDIuHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$RDf-PKF7tMsnzZf3I5iJFyDIuHg;->f$0:F

    iput p2, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$RDf-PKF7tMsnzZf3I5iJFyDIuHg;->f$1:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$RDf-PKF7tMsnzZf3I5iJFyDIuHg;->f$0:F

    iget p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$RDf-PKF7tMsnzZf3I5iJFyDIuHg;->f$1:F

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {v0, p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->lambda$getIdByPosition$31(FFLcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p0

    return p0
.end method
