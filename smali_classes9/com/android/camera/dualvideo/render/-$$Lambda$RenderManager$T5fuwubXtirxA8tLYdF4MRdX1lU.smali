.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$T5fuwubXtirxA8tLYdF4MRdX1lU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/util/RenderSourceType;

.field public final synthetic f$1:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$T5fuwubXtirxA8tLYdF4MRdX1lU;->f$0:Lcom/android/camera/dualvideo/util/RenderSourceType;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$T5fuwubXtirxA8tLYdF4MRdX1lU;->f$1:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$T5fuwubXtirxA8tLYdF4MRdX1lU;->f$0:Lcom/android/camera/dualvideo/util/RenderSourceType;

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$T5fuwubXtirxA8tLYdF4MRdX1lU;->f$1:Landroid/util/Size;

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderSource;

    invoke-static {v0, p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->lambda$genOrUpdateRenderSource$2(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;Lcom/android/camera/dualvideo/render/RenderSource;)V

    return-void
.end method
