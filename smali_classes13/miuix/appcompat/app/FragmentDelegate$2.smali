.class Lmiuix/appcompat/app/FragmentDelegate$2;
.super Lmiuix/appcompat/internal/view/SimpleWindowCallback;
.source "FragmentDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/FragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/FragmentDelegate;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/FragmentDelegate;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate$2;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/SimpleWindowCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate$2;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {p0}, Lmiuix/appcompat/app/FragmentDelegate;->access$200(Lmiuix/appcompat/app/FragmentDelegate;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {p0, p1}, Lmiuix/appcompat/app/IFragment;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate$2;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {p0}, Lmiuix/appcompat/app/FragmentDelegate;->access$200(Lmiuix/appcompat/app/FragmentDelegate;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {p0, p1}, Lmiuix/appcompat/app/IFragment;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate$2;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate$2;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
