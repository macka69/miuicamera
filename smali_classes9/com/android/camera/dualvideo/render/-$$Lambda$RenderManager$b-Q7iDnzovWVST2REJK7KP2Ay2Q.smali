.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$b-Q7iDnzovWVST2REJK7KP2Ay2Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/RenderManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$b-Q7iDnzovWVST2REJK7KP2Ay2Q;->f$0:Lcom/android/camera/dualvideo/render/RenderManager;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$b-Q7iDnzovWVST2REJK7KP2Ay2Q;->f$0:Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->lambda$prepareForCapture$17$RenderManager(Landroid/media/ImageReader;)V

    return-void
.end method
