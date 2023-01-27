.class Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;
.super Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupOverflowMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-direct {p0, p2, p3, p4, p5}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPopupPresenterCallback:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    sget p1, Lmiuix/appcompat/R$layout;->miuix_appcompat_overflow_popup_menu_item_layout:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->setMenuItemLayout(I)V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1900(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1900(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->onDismiss()V

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1700(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->access$1802(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    return-void
.end method

.method public update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method
