.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$PBTPi0Obi0r3NKiQ3VBqQ3OIrio;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/Range;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Range;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$PBTPi0Obi0r3NKiQ3VBqQ3OIrio;->f$0:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$PBTPi0Obi0r3NKiQ3VBqQ3OIrio;->f$0:Landroid/util/Range;

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$updateFpsRange$34(Landroid/util/Range;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
