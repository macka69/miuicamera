.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$2iv9nerKYTycFzBtXY241JMP_SY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/remote/RemoteDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$2iv9nerKYTycFzBtXY241JMP_SY;->f$0:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$2iv9nerKYTycFzBtXY241JMP_SY;->f$0:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    check-cast p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$onConnectivityStateChanged$43(Lcom/android/camera/dualvideo/remote/RemoteDevice;Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;)V

    return-void
.end method
