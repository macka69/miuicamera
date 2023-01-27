.class Lcom/android/camera/zoommap/ZoomMapController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/zoommap/ZoomMapController;->animatorInMapView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/zoommap/ZoomMapController;


# direct methods
.method constructor <init>(Lcom/android/camera/zoommap/ZoomMapController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController$2;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController$2;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-static {p0}, Lcom/android/camera/zoommap/ZoomMapController;->access$300(Lcom/android/camera/zoommap/ZoomMapController;)Lcom/android/camera/ui/GLTextureView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method
