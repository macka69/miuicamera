.class Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment$1;
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

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment$1;->this$0:Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment$1;->this$0:Lcom/android/camera/fragment/dialog/VideoCastExitDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
