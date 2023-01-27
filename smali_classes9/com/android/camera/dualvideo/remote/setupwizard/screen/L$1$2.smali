.class Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$2;
.super Ljava/lang/Object;
.source "L.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$2;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$2;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    iget-object p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->access$102(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;Z)Z

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$2;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    iget-object p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getSelectedRemoteDeviceId()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$2;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    iget-object v0, v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getRemoteDeviceById(I)Lcom/android/camera/dualvideo/remote/RemoteDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectionSuspended(Lcom/android/camera/dualvideo/remote/RemoteDevice;Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$2;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    :cond_1
    return-void
.end method
