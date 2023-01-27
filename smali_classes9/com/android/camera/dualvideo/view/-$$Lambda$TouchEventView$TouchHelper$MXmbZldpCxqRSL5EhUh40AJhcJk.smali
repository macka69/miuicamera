.class public final synthetic Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$MXmbZldpCxqRSL5EhUh40AJhcJk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$MXmbZldpCxqRSL5EhUh40AJhcJk;->f$0:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

    iput-object p2, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$MXmbZldpCxqRSL5EhUh40AJhcJk;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$MXmbZldpCxqRSL5EhUh40AJhcJk;->f$0:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

    iget-object p0, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$MXmbZldpCxqRSL5EhUh40AJhcJk;->f$1:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;->lambda$getRect$8$TouchEventView$TouchHelper(Landroid/graphics/Rect;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
