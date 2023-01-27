.class Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment$1;
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

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment$1;->this$0:Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment$1;->this$0:Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
