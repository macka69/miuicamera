.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItem$DRRv9dfGvu5M00sv-mojcXukhuw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/CameraItem;

.field public final synthetic f$1:Lcom/android/camera/dualvideo/render/MiscTextureManager;

.field public final synthetic f$2:Lcom/android/gallery3d/ui/GLCanvas;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/MiscTextureManager;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItem$DRRv9dfGvu5M00sv-mojcXukhuw;->f$0:Lcom/android/camera/dualvideo/render/CameraItem;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItem$DRRv9dfGvu5M00sv-mojcXukhuw;->f$1:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    iput-object p3, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItem$DRRv9dfGvu5M00sv-mojcXukhuw;->f$2:Lcom/android/gallery3d/ui/GLCanvas;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItem$DRRv9dfGvu5M00sv-mojcXukhuw;->f$0:Lcom/android/camera/dualvideo/render/CameraItem;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItem$DRRv9dfGvu5M00sv-mojcXukhuw;->f$1:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItem$DRRv9dfGvu5M00sv-mojcXukhuw;->f$2:Lcom/android/gallery3d/ui/GLCanvas;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->lambda$drawLabelLeftDown$1$CameraItem(Lcom/android/camera/dualvideo/render/MiscTextureManager;Lcom/android/gallery3d/ui/GLCanvas;Ljava/lang/String;)V

    return-void
.end method
