.class public Lcom/xiaomi/camera/videocast/WaitingActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "WaitingActivity.java"


# instance fields
.field private mAlertDialog:Lmiuix/appcompat/app/ProgressDialog;

.field private mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/camera/videocast/WaitingActivity;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/WaitingActivity;->mAlertDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/videocast/WaitingActivity;->showDialog()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/WaitingActivity;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/WaitingActivity;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/videocast/WaitingActivity;->mAlertDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/WaitingActivity;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/camera/videocast/WaitingActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/videocast/WaitingActivity$1;-><init>(Lcom/xiaomi/camera/videocast/WaitingActivity;)V

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/WaitingActivity;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.camera.videocast.action.DISMISS_ACTIVITIES"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/videocast/WaitingActivity;->mDismissActivitiesBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/WaitingActivity;->mAlertDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/WaitingActivity;->mAlertDialog:Lmiuix/appcompat/app/ProgressDialog;

    :cond_0
    const v0, 0x7f110917

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/RotateDialogController;->showCircleProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/WaitingActivity;->mAlertDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-void
.end method
