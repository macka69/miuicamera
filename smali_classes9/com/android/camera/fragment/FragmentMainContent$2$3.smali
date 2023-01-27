.class Lcom/android/camera/fragment/FragmentMainContent$2$3;
.super Ljava/lang/Object;
.source "FragmentMainContent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentMainContent$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/FragmentMainContent$2;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentMainContent$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$2$3;->this$1:Lcom/android/camera/fragment/FragmentMainContent$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$2$3;->this$1:Lcom/android/camera/fragment/FragmentMainContent$2;

    iget-object p1, p1, Lcom/android/camera/fragment/FragmentMainContent$2;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentMainContent;->access$100(Lcom/android/camera/fragment/FragmentMainContent;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent$2$3;->this$1:Lcom/android/camera/fragment/FragmentMainContent$2;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent$2;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {p0, v0}, Lcom/android/camera/fragment/FragmentMainContent;->access$102(Lcom/android/camera/fragment/FragmentMainContent;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
