.class Lcom/android/camera/fragment/vv/FragmentVVWorkspace$5;
.super Ljava/lang/Object;
.source "FragmentVVWorkspace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$5;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$5;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$1002(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
