.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$50QRXhqbL0YcYQ6UTndPLVHtNes;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/RenderManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$50QRXhqbL0YcYQ6UTndPLVHtNes;->f$0:Lcom/android/camera/dualvideo/render/RenderManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$50QRXhqbL0YcYQ6UTndPLVHtNes;->f$0:Lcom/android/camera/dualvideo/render/RenderManager;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->lambda$handleScaling$12$RenderManager(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
