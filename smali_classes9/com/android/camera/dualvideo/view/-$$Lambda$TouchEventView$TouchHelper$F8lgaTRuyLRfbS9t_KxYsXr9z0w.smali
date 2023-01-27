.class public final synthetic Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$F8lgaTRuyLRfbS9t_KxYsXr9z0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$F8lgaTRuyLRfbS9t_KxYsXr9z0w;->f$0:F

    iput p2, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$F8lgaTRuyLRfbS9t_KxYsXr9z0w;->f$1:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$F8lgaTRuyLRfbS9t_KxYsXr9z0w;->f$0:F

    iget p0, p0, Lcom/android/camera/dualvideo/view/-$$Lambda$TouchEventView$TouchHelper$F8lgaTRuyLRfbS9t_KxYsXr9z0w;->f$1:F

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;

    invoke-static {v0, p0, p1}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;->lambda$getVirtualViewAt$0(FFLcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    return-object p0
.end method
