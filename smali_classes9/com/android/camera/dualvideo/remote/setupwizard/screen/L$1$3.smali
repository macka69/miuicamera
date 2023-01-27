.class Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$3;
.super Ljava/lang/Object;
.source "L.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$3;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$3;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    iget-object p1, p1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->access$102(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;Z)Z

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$3;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    iget-object v1, v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getSelectedRemoteDeviceId()I

    move-result v1

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$3;->this$1:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getRemoteDeviceById(I)Lcom/android/camera/dualvideo/remote/RemoteDevice;

    move-result-object p0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectionSuspended(Lcom/android/camera/dualvideo/remote/RemoteDevice;Z)V

    :cond_0
    return-void
.end method
