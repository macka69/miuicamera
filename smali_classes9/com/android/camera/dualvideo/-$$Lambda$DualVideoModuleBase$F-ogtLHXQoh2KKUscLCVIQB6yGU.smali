.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$F-ogtLHXQoh2KKUscLCVIQB6yGU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$F-ogtLHXQoh2KKUscLCVIQB6yGU;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$F-ogtLHXQoh2KKUscLCVIQB6yGU;->f$0:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$setEvValue$20$DualVideoModuleBase(Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
