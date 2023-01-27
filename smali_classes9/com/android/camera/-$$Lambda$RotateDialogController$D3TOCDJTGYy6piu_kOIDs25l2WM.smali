.class public final synthetic Lcom/android/camera/-$$Lambda$RotateDialogController$D3TOCDJTGYy6piu_kOIDs25l2WM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$D3TOCDJTGYy6piu_kOIDs25l2WM;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$D3TOCDJTGYy6piu_kOIDs25l2WM;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$D3TOCDJTGYy6piu_kOIDs25l2WM;->f$0:Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/-$$Lambda$RotateDialogController$D3TOCDJTGYy6piu_kOIDs25l2WM;->f$1:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/camera/RotateDialogController;->lambda$showLongPressDialog$8(Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
