.class public final synthetic Lcom/android/camera/-$$Lambda$RotateDialogController$VPlCUP8vhXGoeAdEwwch18rvA0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$VPlCUP8vhXGoeAdEwwch18rvA0U;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$VPlCUP8vhXGoeAdEwwch18rvA0U;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/android/camera/RotateDialogController;->lambda$showCustomAlertDialog$3(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method
