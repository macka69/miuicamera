.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$AuxRenderSource$eRQ657Jf8SSwsosPeZnBiJ2UGro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/AuxRenderSource;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/AuxRenderSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$AuxRenderSource$eRQ657Jf8SSwsosPeZnBiJ2UGro;->f$0:Lcom/android/camera/dualvideo/render/AuxRenderSource;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$AuxRenderSource$eRQ657Jf8SSwsosPeZnBiJ2UGro;->f$0:Lcom/android/camera/dualvideo/render/AuxRenderSource;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->lambda$createSurfaceTexture$2$AuxRenderSource(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
