.class Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;
.super Ljava/lang/Object;
.source "S.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    const v0, 0x7f110828

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setAlertDialogTitle(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->access$300(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getAlertDialogButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    invoke-static {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->access$500(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    invoke-static {v1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;->access$400(Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;)Landroid/view/animation/RotateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->stopNetworkServer()V

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->startNetworkServer()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S$2;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;->TIMER_TYPE_CANCEL_DISCOVERY:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->startTimer(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    return-void
.end method
