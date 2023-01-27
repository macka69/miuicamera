.class public final synthetic Lcom/android/camera/ui/-$$Lambda$V6CameraGLSurfaceView$O2afxyyUJMESPJqrJcMgV18tOWs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/ui/V6CameraGLSurfaceView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/-$$Lambda$V6CameraGLSurfaceView$O2afxyyUJMESPJqrJcMgV18tOWs;->f$0:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/-$$Lambda$V6CameraGLSurfaceView$O2afxyyUJMESPJqrJcMgV18tOWs;->f$0:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->lambda$setRendererListener$1$V6CameraGLSurfaceView()V

    return-void
.end method
