.class Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;
.super Ljava/lang/Object;
.source "L.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getActivity()Lcom/android/camera/ActivityBase;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getActivity()Lcom/android/camera/ActivityBase;

    move-result-object v1

    const v2, 0x7f110821

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$2;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$2;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;)V

    const v2, 0x7f1102f6

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$1;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;)V

    const v2, 0x7f1102fb

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->access$002(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->access$000(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$3;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1$3;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->access$000(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->access$000(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->access$000(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getActivity()Lcom/android/camera/ActivityBase;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    invoke-static {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->access$000(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/RotateDialogController;->addDialogFSFlag(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method
