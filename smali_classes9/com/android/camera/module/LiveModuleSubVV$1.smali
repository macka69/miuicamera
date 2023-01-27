.class Lcom/android/camera/module/LiveModuleSubVV$1;
.super Ljava/lang/Object;
.source "LiveModuleSubVV.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/LiveModuleSubVV;->showAuthError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/LiveModuleSubVV;


# direct methods
.method constructor <init>(Lcom/android/camera/module/LiveModuleSubVV;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV$1;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/module/LiveModuleSubVV$1;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110416

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110415

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/camera/module/LiveModuleSubVV$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/LiveModuleSubVV$1$1;-><init>(Lcom/android/camera/module/LiveModuleSubVV$1;)V

    const v2, 0x7f110414

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/camera/module/LiveModuleSubVV$1$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/LiveModuleSubVV$1$2;-><init>(Lcom/android/camera/module/LiveModuleSubVV$1;)V

    const v2, 0x7f110858

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/LiveModuleSubVV$1;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p0, v0}, Lcom/android/camera/RotateDialogController;->addDialogFSFlag(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method
