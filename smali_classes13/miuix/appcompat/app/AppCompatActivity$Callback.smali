.class Lmiuix/appcompat/app/AppCompatActivity$Callback;
.super Ljava/lang/Object;
.source "AppCompatActivity.java"

# interfaces
.implements Lmiuix/appcompat/app/ActivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AppCompatActivity;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/AppCompatActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity$Callback;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0}, Lmiuix/appcompat/app/AppCompatActivity;->access$801(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$901(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$101(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->access$601(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$501(Lmiuix/appcompat/app/AppCompatActivity;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->access$401(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPostResume()V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0}, Lmiuix/appcompat/app/AppCompatActivity;->access$201(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppCompatActivity;->access$701(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$1101(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$1001(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0}, Lmiuix/appcompat/app/AppCompatActivity;->access$301(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method
