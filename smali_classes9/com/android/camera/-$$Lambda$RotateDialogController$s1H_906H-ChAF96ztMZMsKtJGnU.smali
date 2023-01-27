.class public final synthetic Lcom/android/camera/-$$Lambda$RotateDialogController$s1H_906H-ChAF96ztMZMsKtJGnU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$s1H_906H-ChAF96ztMZMsKtJGnU;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$s1H_906H-ChAF96ztMZMsKtJGnU;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lcom/android/camera/RotateDialogController;->lambda$showCTADialog$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
