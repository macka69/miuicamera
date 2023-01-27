.class Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$2;
.super Ljava/lang/Object;
.source "L.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

.field final synthetic val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;

.field final synthetic val$holder:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    iput-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$2;->val$holder:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;

    iput-object p3, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$2;->val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "attr_rol_suw_conn"

    const-string v0, "cancel"

    invoke-static {p2, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    const v0, 0x7f11081f

    invoke-virtual {p2, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setAlertDialogTitle(I)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-virtual {p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p2

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_CANCEL_CONNECTION:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {p2, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->stopTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-virtual {p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p2

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_RESET_STATE:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {p2, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->stopTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-virtual {p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->setSelectedRemoteDeviceId(I)V

    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$2;->val$holder:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;

    iget p2, p2, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceId:I

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->disconnect(I)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$2;->val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    :cond_0
    return-void
.end method
