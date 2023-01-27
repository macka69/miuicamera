.class public final synthetic Lcom/android/camera/-$$Lambda$RotateDialogController$RRldsvqx3d6HvOzJCIzB_jelGYk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$RRldsvqx3d6HvOzJCIzB_jelGYk;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$RRldsvqx3d6HvOzJCIzB_jelGYk;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$RRldsvqx3d6HvOzJCIzB_jelGYk;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$RRldsvqx3d6HvOzJCIzB_jelGYk;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$RRldsvqx3d6HvOzJCIzB_jelGYk;->f$1:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$RRldsvqx3d6HvOzJCIzB_jelGYk;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/camera/RotateDialogController;->lambda$showSystemAlertDialog$4(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
