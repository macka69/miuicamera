.class Lcom/xiaomi/camera/videocast/WaitingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WaitingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/videocast/WaitingActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/videocast/WaitingActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/videocast/WaitingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/videocast/WaitingActivity$1;->this$0:Lcom/xiaomi/camera/videocast/WaitingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "com.xiaomi.camera.videocast.action.DISMISS_ACTIVITIES"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/WaitingActivity$1;->this$0:Lcom/xiaomi/camera/videocast/WaitingActivity;

    invoke-static {p1}, Lcom/xiaomi/camera/videocast/WaitingActivity;->access$000(Lcom/xiaomi/camera/videocast/WaitingActivity;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/camera/videocast/WaitingActivity$1;->this$0:Lcom/xiaomi/camera/videocast/WaitingActivity;

    invoke-static {p1}, Lcom/xiaomi/camera/videocast/WaitingActivity;->access$000(Lcom/xiaomi/camera/videocast/WaitingActivity;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/camera/videocast/WaitingActivity$1;->this$0:Lcom/xiaomi/camera/videocast/WaitingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/WaitingActivity$1;->this$0:Lcom/xiaomi/camera/videocast/WaitingActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method
