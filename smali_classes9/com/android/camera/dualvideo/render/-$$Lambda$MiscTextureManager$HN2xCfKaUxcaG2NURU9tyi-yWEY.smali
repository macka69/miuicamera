.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$HN2xCfKaUxcaG2NURU9tyi-yWEY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/gallery3d/ui/GLCanvas;


# direct methods
.method public synthetic constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$HN2xCfKaUxcaG2NURU9tyi-yWEY;->f$0:Lcom/android/gallery3d/ui/GLCanvas;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$MiscTextureManager$HN2xCfKaUxcaG2NURU9tyi-yWEY;->f$0:Lcom/android/gallery3d/ui/GLCanvas;

    check-cast p1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->lambda$init$0(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscRenderItem;)V

    return-void
.end method
