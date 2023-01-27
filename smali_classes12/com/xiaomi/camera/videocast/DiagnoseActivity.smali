.class public Lcom/xiaomi/camera/videocast/DiagnoseActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "DiagnoseActivity.java"


# instance fields
.field private mAlertDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$showDialog$0()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showDialog$1()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$showDialog$0$DiagnoseActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/DiagnoseActivity;->lambda$showDialog$0()V

    return-void
.end method

.method public synthetic lambda$showDialog$1$DiagnoseActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/DiagnoseActivity;->lambda$showDialog$1()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/videocast/DiagnoseActivity;->showDialog()V

    return-void
.end method

.method public showDialog()V
    .locals 11

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/DiagnoseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/DiagnoseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    const v0, 0x7f11091e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11053c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1102fb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/xiaomi/camera/videocast/-$$Lambda$DiagnoseActivity$hBa9T1MAqNeNA98TW_X68UJVGOE;

    invoke-direct {v5, p0}, Lcom/xiaomi/camera/videocast/-$$Lambda$DiagnoseActivity$hBa9T1MAqNeNA98TW_X68UJVGOE;-><init>(Lcom/xiaomi/camera/videocast/DiagnoseActivity;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/xiaomi/camera/videocast/-$$Lambda$DiagnoseActivity$zLJgEzHwTe6QiUGKnYZfCGiJfQk;

    invoke-direct {v10, p0}, Lcom/xiaomi/camera/videocast/-$$Lambda$DiagnoseActivity$zLJgEzHwTe6QiUGKnYZfCGiJfQk;-><init>(Lcom/xiaomi/camera/videocast/DiagnoseActivity;)V

    move-object v1, p0

    invoke-static/range {v1 .. v10}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/DiagnoseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
