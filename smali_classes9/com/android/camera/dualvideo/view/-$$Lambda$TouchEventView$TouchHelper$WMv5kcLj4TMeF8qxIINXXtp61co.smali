.class public final synthetic Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$WMv5kcLj4TMeF8qxIINXXtp61co;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$WMv5kcLj4TMeF8qxIINXXtp61co;->f$0:I

    iput-object p2, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$WMv5kcLj4TMeF8qxIINXXtp61co;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$WMv5kcLj4TMeF8qxIINXXtp61co;->f$0:I

    iget-object p0, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$WMv5kcLj4TMeF8qxIINXXtp61co;->f$1:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;

    invoke-static {v0, p0, p1}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;->lambda$getRect$6(ILandroid/graphics/Rect;Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;)V

    return-void
.end method
