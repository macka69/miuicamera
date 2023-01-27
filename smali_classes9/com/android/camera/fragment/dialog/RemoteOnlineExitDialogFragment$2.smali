.class Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment$2;
.super Ljava/lang/Object;
.source "RemoteOnlineExitDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment$2;->this$0:Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "attr_rol_activity"

    const-string p2, "exit"

    invoke-static {p1, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCastClick(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->current()Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->stopStreaming()V

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->getConnectedRemoteDevice()Lcom/android/camera/dualvideo/remote/RemoteDevice;

    move-result-object p2

    if-eqz p2, :cond_0

    iget p2, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->id:I

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->disconnect(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->stopNetworkServer()V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment$2;->this$0:Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
