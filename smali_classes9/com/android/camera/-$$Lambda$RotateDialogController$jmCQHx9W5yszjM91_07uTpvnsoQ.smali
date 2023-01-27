.class public final synthetic Lcom/android/camera/-$$Lambda$RotateDialogController$jmCQHx9W5yszjM91_07uTpvnsoQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$jmCQHx9W5yszjM91_07uTpvnsoQ;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$jmCQHx9W5yszjM91_07uTpvnsoQ;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/android/camera/RotateDialogController;->lambda$showSystemAlertDialog$5(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method
