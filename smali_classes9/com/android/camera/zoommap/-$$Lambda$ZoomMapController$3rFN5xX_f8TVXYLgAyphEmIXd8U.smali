.class public final synthetic Lcom/android/camera/zoommap/-$$Lambda$ZoomMapController$3rFN5xX_f8TVXYLgAyphEmIXd8U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/zoommap/ZoomMapController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/zoommap/ZoomMapController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/zoommap/-$$Lambda$ZoomMapController$3rFN5xX_f8TVXYLgAyphEmIXd8U;->f$0:Lcom/android/camera/zoommap/ZoomMapController;

    iput-boolean p2, p0, Lcom/android/camera/zoommap/-$$Lambda$ZoomMapController$3rFN5xX_f8TVXYLgAyphEmIXd8U;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/zoommap/-$$Lambda$ZoomMapController$3rFN5xX_f8TVXYLgAyphEmIXd8U;->f$0:Lcom/android/camera/zoommap/ZoomMapController;

    iget-boolean p0, p0, Lcom/android/camera/zoommap/-$$Lambda$ZoomMapController$3rFN5xX_f8TVXYLgAyphEmIXd8U;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/zoommap/ZoomMapController;->lambda$setMapRect$3$ZoomMapController(Z)V

    return-void
.end method
