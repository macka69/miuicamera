.class public Lcom/android/camera/fragment/GoogleLensFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "GoogleLensFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GoogleLensFragment"


# instance fields
.field private mClickListener:Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/GoogleLensFragment;->mClickListener:Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/GoogleLensFragment;->mClickListener:Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;->onOptionClick(I)V

    :cond_0
    return-void
.end method

.method public static showOptions(Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;)Lcom/android/camera/fragment/GoogleLensFragment;
    .locals 2

    const-string v0, "GoogleLensFragment"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/fragment/GoogleLensFragment;

    invoke-direct {v1, p1}, Lcom/android/camera/fragment/GoogleLensFragment;-><init>(Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;)V

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v1

    :cond_0
    check-cast v1, Lcom/android/camera/fragment/GoogleLensFragment;

    return-object v1
.end method


# virtual methods
.method public synthetic lambda$onCreateDialog$0$GoogleLensFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/GoogleLensFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1106ae

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/-$$Lambda$GoogleLensFragment$ijd1JNUitiMmZWUApbfoEYE-m3E;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/-$$Lambda$GoogleLensFragment$ijd1JNUitiMmZWUApbfoEYE-m3E;-><init>(Lcom/android/camera/fragment/GoogleLensFragment;)V

    const p0, 0x7f030016

    invoke-virtual {p1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/RotateDialogController;->addDialogFSFlag(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method
