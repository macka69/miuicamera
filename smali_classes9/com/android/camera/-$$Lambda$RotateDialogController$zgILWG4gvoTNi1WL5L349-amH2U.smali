.class public final synthetic Lcom/android/camera/-$$Lambda$RotateDialogController$zgILWG4gvoTNi1WL5L349-amH2U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$zgILWG4gvoTNi1WL5L349-amH2U;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$zgILWG4gvoTNi1WL5L349-amH2U;->f$0:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/camera/RotateDialogController;->lambda$showLongPressDialog$9(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
