.class Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment$2;
.super Ljava/lang/Object;
.source "VideoCastExitDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment$2;->this$0:Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "attr_vic_activity"

    const-string p2, "exit"

    invoke-static {p1, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoCastClick(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment$2;->this$0:Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaomi/camera/videocast/VideoCastService;->forceDisconnect(Landroid/content/Context;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment$2;->this$0:Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
