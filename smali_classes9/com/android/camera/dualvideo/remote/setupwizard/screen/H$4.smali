.class Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;
.super Ljava/lang/Object;
.source "H.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

.field final synthetic val$isLocationPermissionGranted:Z


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    iput-boolean p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->val$isLocationPermissionGranted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->val$isLocationPermissionGranted:Z

    const-string v0, "confirm"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$200(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const-string v1, "attr_rol_suw_perm"

    if-nez p1, :cond_0

    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->dismiss()V

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$400(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)V

    goto :goto_0

    :cond_0
    const-string p1, "open"

    invoke-static {v1, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$000(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$100(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$200(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->access$500(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setAlertDialogTitle(I)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getAlertDialogButton(I)Landroid/widget/Button;

    move-result-object p0

    const p1, 0x7f1102fa

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_1
    const-string p1, "attr_rol_suw_home"

    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->showScanView()V

    :goto_0
    return-void
.end method
